import { useState } from "react"
import { StatusBar } from 'expo-status-bar';
import { Button, StyleSheet, Text, View, TextInput, Image, Alert } from
  'react-native';
import react from 'react';
import { Fontisto } from '@expo/vector-icons';
import { MaterialIcons } from '@expo/vector-icons';
export default function App() {

  const entrar = () =>{
    alert('Seja bem-vindo(A)')
    }

  return (
    <View style={styles.container}>
      <View style={styles.caixalogo}>
        <Image style={styles.logo} source={require('../TelaLogin/assets/TimePsule.png')}
        />

      </View>
        <Text style={styles.textologo}> TimePsule</Text>
      <View style={styles.caixainput}>

        <View style={styles.box}>
          <MaterialIcons name="email" size={24} color="black" />
          <TextInput
            style={styles.input}
            placeholder="Entre com seu e-mail"
          />
        </View>
        <View style={styles.box}>
          <Fontisto name="key" size={24} color="black" />
          <TextInput
            keyboardType="numeric"
            style={styles.input}
            placeholder="Entre com sua senha"
          />
        </View>
        <View style={styles.botao}>
          <Button title="Entrar"
            color='#fff' 
            onPress={entrar}/>
        </View>

      </View>
      <StatusBar style="auto" />
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#E0FFFF',
    alignItems: 'center',
    justifyContent: 'center',
  },
  caixalogo: {
    flex: 1,
    justifyContent: 'flex-start',
  },
  textologo: {
    justifyContent: 'center',
    marginTop: 150,
    marginBottom: 40,
    fontSize: 50,
    color: '#008080',
  },
  logo: {
    width: 250,
    height: 250,
    marginTop: 80,
  },
  caixainput: {
    marginBottom: 250,
    alignItems: 'center',
    justifyContent: 'center',
  },
  input: {
    padding: 8,
    width: '80%',
  },
  botao: {
    backgroundColor: '#008080',
    borderRadius: 10,
    paddingLeft: 50,
    paddingRight: 50,
  },
  text: {
    fontSize: 30,
  },
  box: {
    borderWidth: 1,
    marginBottom: 13,
    flexDirection: 'row',
    alignItems: 'center',
    padding: 8,
    borderRadius: 10,
  },
});
