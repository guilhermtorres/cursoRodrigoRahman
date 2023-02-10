void main(){

final nome = 'Guilherme Torres';

var subStringNome = nome.substring(7);
print(subStringNome);

  var subStringNome2 = nome.substring(0,9);
print(subStringNome2);


var sexo = 'Masculino';
var sexoSigla = sexo.substring(0,1);
print(sexoSigla);
if(sexoSigla == 'M'){
  print('Olá seu sexo é Masculino');

if(sexo.startsWith('Masc')){
  print('Olá seu sexo é Masculino');

}}

var paciente = 'Guilherme Torres│33│Desenvolvedor│RS';

var dadosPaciente = paciente.split('│');

print(dadosPaciente);



}