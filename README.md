# 🧮 Calculadora Modular em C

Projeto desenvolvido na disciplina **Compiladores**, pelos alunos **Matheus Buttow** e **Luis Henrique Kiekhofel Reichow**.

O objetivo do trabalho é aplicar os conceitos de **modularização em linguagem C**, **separação entre protótipos e implementações** e **automação da compilação** utilizando um **Makefile**.  
O projeto foi baseado no repositório de referência [ComilaSeparadoC](https://github.com/tioguerra/ComilaSeparadoC), e estendido com novas operações aritméticas.


É uma pequena demonstração de como separar **protótipos** (`.h`) e **implementações** (`.c`) usando `make` para automatizar a compilação. Ideal para estudantes que estão migrando de exemplos monolíticos para projetos modulares em C.

## Pré-requisitos
- Compilador C compatível com C11 (ex.: `gcc` ou `clang`)
- `make`

## Estrutura do Projeto
```
.
├── main.c          # Programa principal
├── soma.c/.h       # Função soma
├── subtrai.c/.h    # Função subtrai
├── multiplicacao.c/.h       # Função multiplicação
├── divisao.c/.h       # Função divisão
├── modulo.c/.h       # Função módulo
├── potencia.c/.h       # Função potência
├── Makefile        # Regras de compilação
├── .gitignore      # Ignora artefatos de build
└── README.md       # Guia do projeto
```

## Como Compilar
```bash
make
```
Isso compila cada `.c` em um `.o` e depois gera o executável `main`.

## Como Executar
```bash
make run
```
Saída esperada:
```
s = 3
```

## Como Limpar
```bash
make clean
```
Remove o executável e todos os objetos.

## Conceitos Demonstrados
- **Headers (`.h`)**: contêm apenas os protótipos e incluem *include guards* para evitar múltiplas inclusões (`soma.h`, `subtrai.h`).
- **Implementações (`.c`)**: possuem o código real e incluem seu respectivo header para manter as assinaturas sincronizadas.
- **Programa principal**: `main.c` inclui somente headers e coordena o fluxo chamando as funções de cada módulo.
- **Makefile**: recompila apenas o necessário a cada alteração e oferece alvos utilitários (`run`, `clean`).

# ProjetoCompiladores-C
=======
**Autores: Matheus Nunes Buttow e Luis Henrique K. Reichow**
**Engenharia da Computação 27/2**
**Disciplina de compiladores**
