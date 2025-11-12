# Exemplo: Compilação Separada em C

Pequena demonstração de como separar **protótipos** (`.h`) e **implementações** (`.c`) usando `make` para automatizar a compilação. Ideal para estudantes que estão migrando de exemplos monolíticos para projetos modulares em C.

## Pré-requisitos
- Compilador C compatível com C11 (ex.: `gcc` ou `clang`)
- `make`

## Estrutura do Projeto
```
.
├── main.c          # Programa principal
├── soma.c/.h       # Função soma
├── subtrai.c/.h    # Função subtrai
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

## Próximos Passos Sugestões
1. Criar novos módulos (ex.: `multiplica.c/.h`).
2. Referenciar os novos headers em `main.c`.
3. Adicionar os novos objetos no `Makefile`.
4. Escrever casos de teste simples usando asserts ou uma mini suíte.


