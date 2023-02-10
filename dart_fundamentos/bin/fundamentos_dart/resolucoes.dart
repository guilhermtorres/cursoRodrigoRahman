void main() {
  final pacientes = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|desenvolvedor|MG',
    'Sandra Silva|40|Desenvolvedor|MG',
    'Regina Verne|35|dentista|MG',
    'João Rahman|55|jornalista|SP',
  ];

//! Baseado no array acima monte um relatório onde:
  //! 2 - Apresente quantos pacientes existem para cada profissão (desenvolvedor, estudante, dentista, jornalista)
  //! 3 - Apresente a quantidade de pacientes que moram em SP

  print('1 - Apresente os pacientes com mais de 20 anos e print o nome deles');
  for (var paciente in pacientes) {
    final dadosPaciente = paciente.split('|');
    var idadePaciente = dadosPaciente[1];

    final idadePacienteInt = int.parse(idadePaciente);
    if (idadePacienteInt > 20) {
      print('Paciente com mais de 20 anos: ${dadosPaciente[0]}');
    }
  }
  final desenvolvedores = [];
  final estudantes = [];
  final dentistas = [];
  final jornalistas = [];
  print('');
  print(
      '2 - Apresente quantos pacientes existem para cada profissão (desenvolvedor, estudante, dentista, jornalista)');

  for (var paciente in pacientes) {
    final dadosPaciente = paciente.split('|');
    final nomePaciente = dadosPaciente[0];
    var profissaoPaciente = dadosPaciente[2].toLowerCase();

    if (profissaoPaciente == 'desenvolvedor') {
      desenvolvedores.add(nomePaciente);
    }

    if (profissaoPaciente == 'estudante') {
      estudantes.add(nomePaciente);
    }
    if (profissaoPaciente == 'dentista') {
      dentistas.add(nomePaciente);
    }
    if (profissaoPaciente == 'jornalista') {
      jornalistas.add(nomePaciente);
    }
  }

  print('Desenvolvedores:');
  desenvolvedores.forEach(print);
  print('');
  print('Estudantes:');
  estudantes.forEach(print);

  print('');

  print('Dentistas:');
  dentistas.forEach(print);
  print('');
  print('Jornalistas:');
  jornalistas.forEach(print);
  print('');
  print('');
  print('');
  print('');
  print('3 - Apresente a quantidade de pacientes que moram em SP');

  for (var paciente in pacientes) {
    final dadosPaciente = paciente.split('|');
    final estado = dadosPaciente[3].toLowerCase();

    if (estado == 'sp') {
      print(dadosPaciente[0]);
    }
  }
}
