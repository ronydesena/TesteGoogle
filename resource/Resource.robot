*** Settings ***
### Aqui fica as library, como é site, então será utilizado a selenium
Library        SeleniumLibrary

### SETUP ele roda Keyword antes da suite ou antes de um Teste
### TEARDOWN ele roda keyword depois de uma suite ou um teste
### Abrir o navegador e fechar navegador são keywords

*** Variables ***
### Declaramos as variáveis globais do projeto
${URL}      https://www.google.com.br/
${BROWSER}  chrome

*** Keywords ***
### Keyword e Teardown
Abrir navegador
  Open Browser  about:blank  ${BROWSER}
Fechar navegador
  Close Browser

### Passo a passo
Acesse o google.com.br
   Go To              ${URL}
   Title Should Be    Google

Realize uma busca pelas palavras-chave “${PALAVRA-CHAVE}”
    Input Text    name=q    ${PALAVRA-CHAVE}
    Press Keys    name=q    ENTER
    ### A palavra que vier aqui dentro é a que ovu pesquisar

Cheque se a busca retornou resultados
    Wait Until Element Is Visible    id=result-stats
    Title Should Be                  robot framework - Pesquisa Google

Acesse o terceiro resultado
    Click Element                    css=#rso > div:nth-child(3) > div > div > div.tF2Cxc > div.yuRUbf > a

Verifique se é mostrada a página esperada
    Wait Until Element Is Visible    css=#primary > div.title-post2
    Title Should Be                  O que é a ferramenta Robot Framework e como ela funciona?
    Page Should Contain Image        xpath=//*[@id="post-1553"]/div/p[1]/img
    Page Should Contain Link         xpath=//*[@id="post-1553"]/div/p[13]/a
