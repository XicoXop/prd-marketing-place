# Calculadora OPL8 — XicoXop

Projeto React + TanStack Start + Vite com a calculadora OPL8 incorporada como arquivo local.

## Executar no Windows

1. Instale o Node.js 22 ou superior.
2. Dê duplo clique em `iniciar-calculadora.bat`.
3. Na primeira execução, o script instala as dependências do projeto (essa etapa exige internet).
4. Depois que o servidor iniciar, o navegador abre em http://127.0.0.1:5173.

Para encerrar, execute `parar-calculadora.bat` ou feche a janela do servidor.

## Executar manualmente

```bash
npm install
npm run dev:offline
```

## Testes e build

```bash
npm test
npm run build
```

## Funcionamento offline

- O arquivo `public/calculadora-opl8.html` contém a calculadora e seus recursos incorporados localmente.
- A calculadora não precisa de API, banco de dados ou serviço remoto para realizar os cálculos.
- Depois que as dependências do projeto estiverem instaladas, o uso local em `127.0.0.1` não exige conexão com a internet.
- A instalação inicial das dependências via npm exige internet, salvo se o cache npm já estiver completo.
- Links externos que o próprio usuário escolher abrir (por exemplo, perfil social) continuam dependendo de internet.

## Estrutura

- `src/routes/index.tsx`: exibe a calculadora local em tela cheia.
- `public/calculadora-opl8.html`: arquivo original standalone da calculadora.
- `iniciar-calculadora.bat` e `parar-calculadora.bat`: atalhos para Windows.
