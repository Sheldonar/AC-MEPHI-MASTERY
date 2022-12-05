// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract TheSecondLab is ERC20 {
    

    // Добавить в смарт-контракт структуру данных произвольного названия, которая бы содержала поля типа: 
    // логический, 
    // знаковый целочисленный, 
    // адрес 
    // четырехбайтовый.


    // Структура
    struct TheStruct {
        bool logic;
        int number;
        address home;
        uint32 value;   
    }

    // Добавить отображения адресов на эту структуру
    mapping(address => TheStruct) mapper;


    // Функция создания структуры
    function createStruct (address keymap, bool logic_, int number_, address home_, uint32 value_) external {
        mapper[keymap] = TheStruct (
            {
               logic: logic_,
               number: number_,
               home: home_,
               value: value_
            }
        );
    }

    // добавление в отображение
    function getTheStruct(address addr) external view returns (TheStruct memory) {
        return mapper[addr];
    }   

   
    constructor(uint256 initialSupply) ERC20("TheSecondLab", "TSL") {
        _mint(msg.sender, initialSupply);
    }

    

}



