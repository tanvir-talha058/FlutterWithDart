void main(){
  String destinationZone= 'ABC';
  double weight=4.5;

  if(destinationZone == 'PQR'){
    print('Shipping cose: ${weight*10}');
  }
  else if (destinationZone == 'XYZ'){
    print('Shipping cost:$weight*20');
  }
  else if(destinationZone == 'ABC'){
    print('shipping cost:$weight*30');
  }
  else{
    print('invalid destination zone');
  }
}