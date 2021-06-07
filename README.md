Robot Framework
===============


Introdução
------------
<a href="http://robotframework.org">Robot Framework</a> é uma estrutura genérica de automação de código aberto para teste de aceitação, desenvolvimento dirigido por teste de aceitação e automação de processo robótico. Possui sintaxe de texto simples e pode ser facilmente estendido com bibliotecas implementadas usando Python ou Java.

O Robot Framework é independente do sistema operacional e do aplicativo. A estrutura principal é implementada usando <a href="http://python.org">Python</a> , suporta Python 2.7 e Python 3.5+ e também roda em <a href="http://jython.org">Jython (JVM)</a>, <a href="http://ironpython.net">IronPython (.NET)</a> e <a href="http://pypy.org">PyPy</a> . A estrutura possui um rico ecossistema ao seu redor, consistindo em várias bibliotecas e ferramentas genéricas que são desenvolvidas como projetos separados.

Instalação
------------

Para poder executar a script de teste, a primeira pré-condição é ter o  <a href="http://python.org">Python</a> com <a href="http://pip-installer.org">pip</a> instalado. Com isso, é possível instalar o Robot Framework simplesmente executando no prompt de comando:
   
    pip install robotframework

Logo após é necessário instalar a SeleniumLibrary, que é uma biblioteca de teste da web para Robot Framework que utiliza a ferramenta Selenium internamente. O método de instalação recomendado é usar pip:

    pip install --upgrade robotframework-seleniumlibrary

Também é necessário um editor ou IDE, é recomendável utilizar o <a href="https://atom.io/">Atom</a>, que é um editor de texto de código aberto disponível para as plataformas Linux, macOS e Microsoft Windows, desenvolvido pelo GitHub sob a licença MIT.

Para poder testar um Sistema Web também é necessário ter os drivers dos browsers. Os mais utilizados geralmente são o <a href="https://chromedriver.chromium.org/downloads">Chrome</a> e <a href="https://github.com/mozilla/geckodriver/releases">Mozilla</a>.
