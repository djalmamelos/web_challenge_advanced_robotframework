
# RobotFramework Web Automation Testing 🌐

Este repositório contém um projeto de automação de testes para o site de testes [Automation Practice](http://automationpractice.pl) usando RobotFramework. O objetivo dos testes é verificar funcionalidades específicas do site, como cadastro de cliente e manipulação de produtos no carrinho. O projeto está estruturado com o uso de Page Objects e recursos reutilizáveis para facilitar a automação.

## Índice 📚

- [Introdução](#introdução)
- [Pré-requisitos](#pré-requisitos)
- [Estrutura do Projeto](#estrutura-do-projeto)
- [Como Executar os Testes](#como-executar-os-testes)
- [Casos de Teste](#casos-de-teste)
- [Contribuição](#contribuição)

## Introdução 🌟

Este projeto foi criado para demonstrar habilidades em automação de testes web usando RobotFramework e SeleniumLibrary. O site de testes utilizado é o [Automation Practice](http://automationpractice.pl). Os testes cobrem os seguintes casos de uso:

- **Caso de Teste com PO 01**: Remover Produtos do Carrinho
- **Caso de Teste com PO 02**: Adicionar Cliente

## Pré-requisitos ✅

Antes de começar, você vai precisar ter o seguinte instalado em sua máquina:

- Python 3.x
- RobotFramework
- SeleniumLibrary
- Webdriver para o navegador que você vai usar (por exemplo, ChromeDriver para Google Chrome)

## Estrutura do Projeto 📁

```plaintext
robotframework-web-automation-testing/
├── tests/
│   ├── PO_Home.robot
│   ├── PO_Register.robot
│   ├── PO_Carrinho.robot
├── resources/
│   ├── keywords.robot
├── reports/
│   ├── log.html
│   ├── report.html
│   ├── output.xml
├── README.md
├── requirements.txt
```

- **tests/**: Contém os arquivos de teste para os casos de teste definidos.
- **resources/**: Contém recursos reutilizáveis como keywords.
- **results/**: Contém os relatórios gerados após a execução dos testes.

## Como Executar os Testes ▶️

Para executar todos os testes, use o seguinte comando no diretório raiz do projeto:

```sh
robot tests/
```

Os relatórios e logs de execução dos testes serão gerados na pasta `results/`.

## Casos de Teste 📝

### Caso de Teste com PO 01: Remover Produtos do Carrinho

Este teste verifica a funcionalidade de remover produtos do carrinho de compras.

### Caso de Teste com PO 02: Adicionar Cliente

Este teste verifica o processo de cadastro de um novo cliente com dados aleatórios.

## Contribuição 🤝

Contribuições são bem-vindas! Por favor, abra um problema ou envie um pull request para discutir mudanças que você gostaria de fazer.

