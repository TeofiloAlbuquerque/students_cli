import 'package:args/command_runner.dart';

void main(List<String> arguments) {
  CommandRunner('Student CLI', 'CLI Student')
    ..addCommand(ExampleCommand())
    ..run(arguments);
}

class ExampleCommand extends Command {
  @override
  String get description => 'Exemplo de Comando';

  @override
  String get name => 'exemplo';

  ExampleCommand() {
    argParser.addOption('template',
        abbr: 't', help: 'Template de criação do projeto');
  }

  @override
  void run() {
    print(argResults?['template']);
    print('Executar qualquer coisa!!!');
  }
}


 // final argParser = ArgParser();
  // // Definimos um nome para a flag e uma abreviação
  // argParser.addFlag('data', abbr: 'd');
  // argParser.addOption('name', abbr: 'n');
  // argParser.addOption('template', abbr: 't');

  // final argResult = argParser.parse(arguments);
  // // As abreviações nós conseguimos passar mas não conseguimos recuperar por elas
  // print('${argResult['data']}');
  // print('${argResult['name']}');
  // print('${argResult['template']}');