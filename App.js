// import { StatusBar } from 'expo-status-bar';
// import React from 'react';
// import { StyleSheet, Text, View } from 'react-native';
// import { Provider as PaperProvider } from 'react-native-paper';
// import AppNavigation from './src/Navigation/AppNavigation';

// export default function App() {
//   return (
//     <PaperProvider>
//         <AppNavigation/>
//         <StatusBar style="auto" />
//     </PaperProvider>
//   );
// }

// const Styles = StyleSheet.create({
//   container: {
//     flex: 1,
//     backgroundColor: '#fff',
//     alignItems: 'center',
//     justifyContent: 'center',
//   },
// });

import React, {useState, useMemo, useEffect} from 'react';
 
import { View, Text, Button} from 'react-native';
import{ Provider as PaperProvider} from "react-native-paper";
import jwtDecode from "jwt-decode";
import AppNavigation from "./src/navigation/AppNavigation";
import AuthScreens from "./src/pantallas/Auth";
import AuthContext from "./src/context/AuthContext"; 
import { setTokenApi, getTokenApi, removeTokenApi} from "./src/api/token";


export default function App() {
  const [auth, setAuth] = useState(undefined);

useEffect(() => { 
 (async()=>{
    const token = await getTokenApi();
    if(token){
       
      setAuth({
        token,
        idUser:token,
      });
    }else{
    
      setAuth(null);
    }
 })()
}, []);

const login =(user) => {
 setTokenApi(user.intIdUsuario);
 setAuth({
   token: user.intIdUsuario,
   idUser: user.intIdUsuario,
 });
};

const logout = () => {
  if(auth){
    removeTokenApi();
    setAuth(null);
  }
}

  const authData = useMemo(
    () => ({
    auth,
    login,
    logout,
    }),
    [auth]
  );

if(auth === undefined) return null;
 console.log(auth);
  return (
    <AuthContext.Provider value={authData}> 
    <PaperProvider>
    {auth ? (
       <AppNavigation/>
       )
     
     : (<AuthScreens />
     )}
   
    </PaperProvider>
    </AuthContext.Provider>
  );
}


    //  {auth ? (
    //    <AppNavigation/>
    //    )
     
    //  : (<AuthScreens />
    //  )}