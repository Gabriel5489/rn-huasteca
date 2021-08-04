import React, {useState} from 'react'
import { View, Text } from 'react-native';
import {TextInput, Button} from "react-native-paper";
import {useFormik} from "formik";
import * as Yup from "yup";
import Toast from "react-native-root-toast";
import useAuth from "../../hooks/useAuth";
import {loginApi} from "../../api/user";
import {formStyle} from "../../style";

export default function LoginForm(props) {
    const { changeForm}= props;
   const [loading, setloading] = useState(false);
const {login} = useAuth();
 

    const formik = useFormik({
        initialValues: initialValues(),
        validationSchema: Yup.object(validationSchema()),
        onSubmit: async (formData) => {
            setloading(true);
            try {
                const response = await loginApi(formData);
                if(response==0) throw "Error en el usuario o contraseña"; 
                login(response);
            } catch (error) {
                Toast.show(error,{
                    position: Toast.positions.CENTER,
                });
                setloading(false);
            }
            
        },
        
    });

    return (
        <View>
            
            <TextInput
            label="Email" style={formStyle.input}
            onChangeText={(text)=> formik.setFieldValue("email", text)}
            value={formik.values.email}
            error={formik.errors.email}
            />
            <TextInput
            label="Contraseña" style={formStyle.input}
            onChangeText={(text)=> formik.setFieldValue("password", text)}
            value={formik.values.password}
            error={formik.errors.password}
            secureTextEntry
            />

            <Button mode="contained" style={formStyle.btnSucces}
            onPress={formik.handleSubmit}
            loading={loading}
            >
                Entrar
            </Button>

            
            <Button mode="text" style={formStyle.btnText} labelStyle={formStyle.btnTextLabel}
            onPress={changeForm}
            
            >
                Registrarse
            </Button>
        </View>
    )
}

function initialValues(){
    return{
        email: "",
        password: ""
    }
}

function validationSchema(){
    return{
        email: Yup.string().email(true).required(true),
        password: Yup.string().required(true),
    };
}