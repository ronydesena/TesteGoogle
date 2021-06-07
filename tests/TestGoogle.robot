*** Settings ***
### Aqui fica as library, como é site, então será utilizado a selenium
Resource      ../resource/Resource.robot
Test Setup     Abrir navegador
Test Teardown  Fechar navegador

### SETUP ele roda Keyword antes da suite ou antes de um Teste
### TEARDOWN ele roda keyword depois de uma suite ou um teste
### Abrir o navegador e fechar navegador são keywords


*** Test Case ***
Caso de Teste 01: mostrar página
    Acesse o google.com.br
    Realize uma busca pelas palavras-chave “robot framework”
    Cheque se a busca retornou resultados
    Acesse o terceiro resultado
    Verifique se é mostrada a página esperada
