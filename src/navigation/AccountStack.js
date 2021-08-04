import React from 'react'
import {createStackNavigator} from "@react-navigation/stack";
import Adresses from "../pantallas/Favoritos";
import AddAddress from "../pantallas/AddAddress";
import colors from "../style/colors";

 

const Stack = createStackNavigator();

export default function AccountStack() {
    return (
        <Stack.Navigator
        screenOptions={{
            headerTintColor: colors.fontLight,
            headerStyle: {backgroundColor: colors.bgDark},
            cardStyle:{
                backgroundColor: colors.bgLight
            },
        }}
        >

         <Stack.Screen
         name="adresses"
         component={Adresses}
         options={{
             title: "Mis direcciones",
         }}
         /> 
          <Stack.Screen
         name="add-address"
         component={AddAddress}
         options={{
             title: "Nueva direccion",
         }}
         /> 
           
        </Stack.Navigator>
    );
}
