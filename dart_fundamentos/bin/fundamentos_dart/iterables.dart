void main(){

var numeros = List.generate(10, (index) => index);

/* for(var i = 0; i < numeros.length; i++) {
  if (i == 5){
    continue;
  }
print(numeros[i]);
} */

numeros
.where((numero) => numero != 5)
.forEach((numero) => print(numero));



final numeroAte5 = numeros.takeWhile((numero) => numero < 6);
print(numeroAte5);


var nomes = ['Rodrigo', 'Guilherme', 'Arthur', 'Sandra', 'Marcos'];
var nomesSkip = nomes.skipWhile((nome) {
  if(nome != 'Arthur') {
    return true;
  }else {return false;
  }
}).toList();
print(nomesSkip);

var numeroStrList = numeros.map((numero) {
  return 'Numero é $numero';

}).toList();
print(numeroStrList);
}