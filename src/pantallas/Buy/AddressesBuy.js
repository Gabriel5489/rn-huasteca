import React, { useState, useEffect, useCallback } from 'react'
import { SafeAreaView, Text, StyleSheet, ScrollView } from 'react-native'
import { Button } from 'react-native-paper';
import { useNavigation, useFocusEffect } from '@react-navigation/native';
import { KeyboardAwareScrollView } from 'react-native-keyboard-aware-scroll-view';
import { getAddressesApi } from "../../api/Address"
import AddressesList from "../../componentes/Buy/AddressesList";
import useAuth from "../../hooks/useAuth"
import StatusBarCustom from '../../componentes/StatusBarCustom';
import Loading from "../../componentes/Loading"
import colors from '../../style/colors';

export default function AddressesBuy(props) {
    const { route:{ params } } = props;

    const [addresses, setAddresses] = useState(null);
    const [selectedAddress, setSelectedAddress] = useState(null)
    const [totalPayment, setTotalPayment] = useState(params?.totalPayment)
    const { auth } = useAuth();
    const nav = useNavigation();
    useFocusEffect(
        useCallback(
            () => {
                setAddresses(null);
                setSelectedAddress(null);
                loadAddresses();
                
            },[]
        )
    );
    const loadAddresses = async() => {
        let controller = new AbortController();
        let signal = controller.signal;
        const response = await getAddressesApi(auth,signal);
        controller.abort();
        setAddresses(response);
    }
    const GoToPayment = () => {
        nav.push("Payment",{ selectedAddress, totalPayment});
    }
    const GoToAddress = () => {
        nav.navigate("Addresses");
    }
    return (
        <>
            <StatusBarCustom bgC={colors.indigo} barstyle="light-content" />
            <KeyboardAwareScrollView extraScrollHeight={25} >
                <ScrollView>
                    <SafeAreaView style={ Styles.container } >
                    {!addresses ? (
                        <Loading />
                    ) : (
                        <>
                            <Button onPress={ GoToAddress }>Administrar direcciones</Button>
                            <AddressesList addresses={ addresses } 
                            selectedAddress={selectedAddress} setSelectedAddress={setSelectedAddress}
                            GoToPayment={GoToPayment} totalPayment={totalPayment}
                            />    
                        </> 
                    )}             
                    </SafeAreaView>
                </ScrollView>
            </KeyboardAwareScrollView>
            
        </>
    )
}
const Styles = StyleSheet.create({
    container: {
        flex: 1,
        padding: 10,
    }
});