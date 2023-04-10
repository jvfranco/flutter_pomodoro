import 'package:mobx/mobx.dart';

/*
  dev_dependecies = build_runner e mobx_codegen.
  Para que haja uma gerencia de estado com reatividade, é preciso que mais código seja gerado além das anotações
  Utiliza-se o mixin Store, mas somente o mixin não tem essa capacidade,
  transformá-se a classe em abstract e a deixa private,
  as dependencias geraram um novo mixin, com o nome da classe e um $, exemplo: _$ContadorStore,
  deve se criar uma nova classe que será instanciada, unindo a classe com os atributos e a classe gerada,
  também é gerado um novo arquivo, com extensão.g.dart, rodar os comandos para geração do código:
    - flutter pub run build_runner clean
    - flutter pub run build_runner watch
  arquivo build.yaml serve para que o build_runner busque somente os store dentro de um diretorio
  especifico, fazendo com que diminua o tempo de build.
 */

part 'contador.store.g.dart';

class ContadorStore = _ContadorStore with _$ContadorStore;

abstract class _ContadorStore with Store {
  @observable
  int contador = 0;

  @action
  void incrementar() {
    contador++;
  }
}
