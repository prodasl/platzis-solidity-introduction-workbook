// SPDX-License-Identifier: GPL-3.0
/*
Struct: Complex data with elements inside.
Array: String of elements, they can be static or dynamic.
*/

pragma solidity >=0.7.0 <0.9.0;

contract Class{
    struct Student {
        string name;
        uint ID;
    }

    Student[] public students;

    constructor(){
        students.push(Student({name: "Juan", ID: 12345}));
    }
}