// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract cuentaAhorro{
    //Ingresar saldo
    //Retirar saldo
    //Saldo inicial es 0
    //Datos Personales


//Datos personales
struct Cliente{
    String nombre;
    int edad;
}

mapping (address => Cliente) clientes;


//Variable de estado -se guarda en el Storage de EVM, una vez que se ejecuta se guarda no como los demas
//que se reinicia en cero y se debe correr de nuevo
uint saldo = 0;

//Ingresar saldo
function ingresarSaldo(uint valorIngresar) public  {
    saldo = saldo + valor;
} 

//Retirar Saldo
function retirarSaldo(uint valorRetirar) public view{
    require (saldo >= valorRetirar, "Fondos Insuficientes");
    saldo = saldo - valorRetirar;
    
    /*if(saldo >= valorRetirar){
        saldo= saldo - valorRetirar;
    }*/ //Esta funcion cuesta mas que el REQUiERE porque tiene menos gastos computacionales osea GAS
}


//Consultar saldo
function consultarSaldo() public view returns (uint) {
    return saldo;
}

}

/*
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract cuentaAhorro{

    //Ingresar saldo 

    //Retirar saldo

    //Saldo inicial es 0

    //Datos personales 

    struct Persona{
        string nombre;
        int edad;
    }

    mapping(address => Persona) personas;

    //Variable de estado - Storage de EVM 
    uint saldo = 0;

    //Ingresar saldo 
    function ingresarSaldo(uint valorIngresar)public{
        saldo = saldo + valorIngresar;
    }

    //Retirar saldo
    function retirarSaldo(uint valorRetirar)public{

        require(saldo >= valorRetirar, "Fondos insuficientes");
        saldo = saldo - valorRetirar;
        
        /*
        if(saldo >= valorRetirar){
            saldo = saldo - valorRetirar;
        }
        
        */  
    }

    //Consultar saldo
    function consultarSaldo()public view returns (uint){
        return saldo;
    }

}*/