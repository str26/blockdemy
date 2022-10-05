// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract dataTypeValor{

  //Booleano

    bool flagVerdadero = true;
    bool flagFalse = false;    


    //******************************//

    //Entero con signo
      
      //256 byts
      int number1 = -8;

      //8 bits
      int8 number2 = -8;
      
      //16 bits
      int16 number3 = -8;

    //Entero sin signo
    
      //*256 byts
      uint number4 = 8;

      //*8 bits
      uint8 number5 = 8;

      //*32 bits
      uint32 number6 = 8;

    //***********************************/

    // Address - 20 bytes - Guarda direcciones de Ethereum

    // Address del contract account
      address public addressAccount = address(this); //con public dar deploy para ver las direcciones

    // Address del Externally Owned Account
      address public addressExternally = msg.sender; //con public dar deploy para ver las direcciones

    //Propiedades Address
      uint public balanceAddressAccount = addressAccount.balance;
      uint public balanceAddressExternally = addressExternally.balance;

     //********************************************+/

     //* Array de tamaño fijo bytes1 - bytes32

     //*1bites - 8 bits 
        bytes1 data =  "9";
        bytes2 data2 = "90";
        bytes32 data3 = "Hello World";


    //Propiedades de los bytes 
      //*Tamaño 
      uint public lenghtData1 = data.length;

      uint public lenghtData2 = data2.length;

//*****************************
//Types de Referencia
//**********************************/

//Struct

  struct  Persona{
     bool vacunado;
     uint8 edad;
     bytes32 nombre;
}

 Persona public p1 = Persona (true, 39, "Esther");

  Persona public p2 = Persona ({
      edad: 39,
      vacunado: false,
      nombre: "Julia" 
  });

    uint8 public getEdad = p1.edad;


  //***********************
  //Mapping
  /**********************/

  mapping (int => string) public mappingFrutas;

  mapping(address => Persona) public diccPersonas;

  function addFruta() public {
    mappingFrutas[1] = "fresa";
    mappingFrutas[5] = "manzana";
    mappingFrutas[4] = "melon";
  }
     

  function addPersonas () public {
    diccPersonas[msg.sender]= p1;
  }

mapping (address => Persona) public mappingPersona;

Persona p10  = Persona(true,30,"Camila");

function addPersona() public {
  mappingPersona[msg.sender] = p10;
}

mapping (address => string) public mappingPersona2;

function addPersona2() public {
  mappingPersona2[msg.sender] = "Carlos";
}

mapping (address => int) public balances;
//(675678,1),(5678,10)

address public miAddress = msg.sender;

address public owner = msg.sender;


}

//https://docs.soliditylang.org/en/v0.8.17/structure-of-a-contract.html?highlight=struct#struct-types
//para revisar toda la documentacion de solidity

