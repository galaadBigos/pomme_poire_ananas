import "package:flutter/material.dart";

bool isFirstNumber(int counter) {
  for(var i = 2; i < counter; i++)
    if(counter % i == 0)
      return false;
  return counter > 1;
}