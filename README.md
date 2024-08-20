# Projeto de Automação WEB 


## 📇 Indíce
- <a href="#-sobreoprojeto">Sobre o Projeto
- <a href="#-tecnologiasutilizadas">Tecnologias Utilizadas
- <a href="#-instalação">Instalação
- <a href="#-comorodaroprojeto">Como rodar o projeto
- <a href="#-técnicasdetestes">Técnicas de Testes
- <a href="#-massadedados">Massa de dados para execução


## 💻 Sobre o Projeto

Projeto de automação de testes da aplicação WEB no site "https://practice.automationtesting.in/"

## 🔧 Tecnologias Utilizadas

- [x] Robot Framework
- [x] Browser Library
- [x] Faker Library

## ⚙️ Instalação

### Python

O Robot Framework é implementado usando Python, então é necessário ter o Python instalado na versão 3.6 ou mais recente.
Caso não tenha o Python instalado acesse [https://www.python.org/](https://www.python.org/) e realize a instalação segundo o sistema operacional utilizado.
Para verificar a versão instalada do Python basta digitar o seguinte comando no terminal:

```bash
python --version
```

### Robot Framework e Libraries

É necessário instalar o package do Robot Framework e suas libraries utilizando o pip (gerenciador de pacotes padrão do Python).
Abaixo segue o comando para instalar o Robot e todas as bibliotecas utilizadas no projeto:

```bash
pip install -U -r requirements.txt
```

Para verificar a versão instalada do Robot basta digitar o seguinte comando no terminal:
```bash
robot --version
```

### Extensão no VS Code

[RobotCode - Robot Framework Support](https://marketplace.visualstudio.com/items?itemName=d-biehl.robotcode)


## 🚀 Como rodar o projeto

```bash
# Executa os testes da pasta 'tests'
robot -d ./reports tests
```

## 🔍 Técnicas de Testes

- Testes exploratórios

## 🗂️ Massa de dados para execução

### Registro de Usuário

- Endereço de email (gerado pela Faker Library)
- Senha válida (gerada pela Faker Library)
- Senha Fraca contendo menos de 7 caracteres "abc12"
- Senha Fraca contendo 7 ou mais caracteres, sem símbolos "abcd123"
- Senha Fraca contendo 7 ou mais caracteres, sem números e letras minúsculas "ABCD!@$"
- Senha Média contendo 7 caracteres, letras maiúsculas, minúsculas e números "Senha@123"

### Login

- Endereço de email (gerado pela Faker Library)
- Senha válida (gerada pela Faker Library)
- Endereço de e-mail não registrado "usuario_inexistente@inexistente"
- Senha inválida "senha_incorreta"

### Produto

- Cupom de desconto "krishnasakinala" 
