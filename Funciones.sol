// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract Funciones{

    function suma1() public pure{
        uint numero1 =2;
        uint numero2 = 3;
        uint resultado = 0;
        //numero = numero +1;
        resultado = numero1 + numero2;
    }

function suma2() public pure returns(uint) {  //siempre retunrs con s al inicio de la funcion
        uint numero1 =2;
        uint numero2 = 3;
        uint resultado = 0;
        //numero = numer +1;
        resultado = numero1 + numero2;
        return resultado; // siempre returns sin s al finicio de la funcion
    }

    function funcion2(int parametro1, int parametro2) public pure{
        int resultado;
        resultado = parametro1 - parametro2;   
    }

}