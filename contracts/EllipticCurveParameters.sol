// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

/**
** Modified by Noella Spitz 2024. Original liscence:
** 
** MIT License
** 
** Copyright (c) 2019 Harsh Patel
** 
** Permission is hereby granted, free of charge, to any person obtaining a copy
** of this software and associated documentation files (the "Software"), to deal
** in the Software without restriction, including without limitation the rights
** to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
** copies of the Software, and to permit persons to whom the Software is
** furnished to do so, subject to the following conditions:
** 
** The above copyright notice and this permission notice shall be included in all
** copies or substantial portions of the Software.
** 
** THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
** IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
** FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
** AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
** LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
** OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
** SOFTWARE.
*/

import "../libs/EllipticCurve.sol";

contract EllipticCurveParameters {
    uint256 public pp = uint256(0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFC2F);
    uint256 public nn = uint256(0xfffffffffffffffffffffffffffffffebaaedce6af48a03bbfd25e8cd0364141);
    uint256 public gx = uint256(0x79BE667EF9DCBBAC55A06295CE870B07029BFCDB2DCE28D959F2815B16F81798);
    uint256 public gy = uint256(0x483ADA7726A3C4655DA4FBFC0E1108A8FD17B448A68554199C47D08FFB10D4B8);

    function eAdd( uint256 _x1 , uint256 _y1 , uint256 _x2 , uint256 _y2 )
        public
        view
        returns ( uint256 _x3 , uint256 _y3 )
    {
        (_x3,_y3) = EllipticCurve.ecAdd(_x1,_y1,_x2,_y2,0,pp);
    }

    function eSub( uint256 _x1 , uint256 _y1 , uint256 _x2 , uint256 _y2 )
        public
        view
        returns ( uint256 _x3 , uint256 _y3 )
    {
        (_x3,_y3) = EllipticCurve.ecSub(_x1,_y1,_x2,_y2,0,pp);
    }

    function eMul( uint256 _z , uint256 _x1 , uint256 _y1 )
        public
        view
        returns ( uint256 _x2 , uint256 _y2 )
    {
        (_x2,_y2) = EllipticCurve.ecMul(_z,_x1,_y1,0,pp);
    }

}