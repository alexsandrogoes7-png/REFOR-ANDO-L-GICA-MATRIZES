# 🎮 JOGO DA VELHA — VisualG (Versão Atualizada)

## 📌 Descrição

Este projeto implementa um Jogo da Velha utilizando a linguagem VisualG. O sistema permite dois jogadores (X e O), validação de jogadas, verificação automática de vitória, detecção de empate e opção de reiniciar o jogo com tratamento de respostas inválidas.

---

## 🧠 Funcionamento Geral

O jogo roda dentro de um laço principal (REPITA ... ATE) que só termina quando o usuário decide encerrar.  
A variável `FIMDEJOGO` controla o encerramento definitivo do programa.

---

## 🔢 Estrutura do Tabuleiro

O tabuleiro é representado por:

`tabela: vetor[1..3,1..3] de caracter`

No início de cada partida, as posições recebem valores de 1 a 9:

+---+---+---+
| 1 | 2 | 3 |
+---+---+---+
| 4 | 5 | 6 |
+---+---+---+
| 7 | 8 | 9 |
+---+---+---+

Esses números indicam as posições disponíveis para jogada.

---

## 🎯 Fluxo da Partida

### 1️⃣ Inicialização
- `simbolo` começa como "X"
- `contador` controla o número de jogadas
- `vitoria` inicia como falso

---

### 2️⃣ Entrada da Jogada

O jogador escolhe uma posição:

VAI QUERER JOGAR X EM QUAL POSICAO?

O sistema:
- Percorre a matriz
- Verifica se o número digitado existe
- Se não existir → exibe erro
- Se existir → permite continuar

---

### 3️⃣ Atualização e Exibição

O procedimento `LAYOUT()`:
- Atualiza a posição escolhida
- Exibe o tabuleiro formatado

---

### 4️⃣ Verificação de Vitória

O programa testa:
- Todas as linhas
- Todas as colunas
- Diagonal principal
- Diagonal secundária

Se três símbolos iguais forem encontrados, `vitoria` recebe verdadeiro.

---

### 5️⃣ Alternância de Jogador

Se ninguém venceu:
- "X" troca para "O"
- "O" troca para "X"

---

### 6️⃣ Empate

Se:
- `vitoria = falso`
- `contador = 9`

Resultado exibido:

DEU VELHA!!

---

## 🔁 Reinício do Jogo

Após o término da partida:

QUER JOGAR NOVAMENTE [S/N]?

O programa aceita:
- S, s, SIM, sim
- N, n, NAO, nao

Se a resposta for inválida, o sistema exibe:

RESPOSTA INVALIDA, TENTE NOVAMENTE!!!

O laço só encerra quando o usuário escolhe sair.

---

## 🛠 Principais Variáveis

- `tabela` → Matriz 3x3 que representa o tabuleiro  
- `simbolo` → Jogador atual  
- `vitoria` → Indica se houve vencedor  
- `contador` → Controla número de jogadas  
- `confirmacao` → Valida posição escolhida  
- `continue` → Valida resposta de reinício  
- `FIMDEJOGO` → Controla encerramento total do programa  

---

## 📚 Conceitos Trabalhados

- Matrizes bidimensionais  
- Estruturas de repetição (`para`, `repita`)  
- Estruturas condicionais (`se`)  
- Validação de entrada  
- Procedimentos  
- Controle de fluxo com variáveis booleanas  

---

## 🎓 Objetivo

Projeto desenvolvido para consolidar lógica de programação, organização estrutural de código e controle de estado do sistema por meio da implementação completa de um jogo em terminal.

---

Projeto desenvolvido para prática e evolução em lógica de programação utilizando VisualG.