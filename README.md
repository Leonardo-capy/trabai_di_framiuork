# trabai_di_framiuork

Aplicação simples para cadastro e listagem de produtos usando **Fastify**, **TypeScript**, **MySQL** e um frontend com HTML.

## 🚀 Tecnologias utilizadas

- Fastify
- TypeScript
- MySQL
- Node.js
- HTML + JavaScript (fetch)
- @fastify/static (para servir os arquivos HTML)
- @fastify/cors (para habilitar CORS)

## 📂 Estrutura do Projeto

```
├── index.ts                # Código principal do servidor Fastify
├── main.sql                # Script para criar a tabela no banco de dados
├── public/                 # Frontend estático servido pelo Fastify
│   ├── index.html          # Página de cadastro de produtos
│   ├── produtos.html       # Página de listagem de produtos
│   └── cadastro_pessoa.html # (Opcional) Página futura para cadastro de pessoas
├── package.json
├── package-lock.json
├── .gitignore
└── README.md
```

## ⚙️ Como rodar o projeto

### 1. Clone o repositório

```bash
git clone https://github.com/Leonardo-capy/trabai_di_framiuork.git
cd trabai_di_framiuork
```

### 2. Instale as dependências

```bash
npm i
```

### 3. Configure o banco de dados MySQL

Crie um banco e execute o script `main.sql` para gerar a tabela:

```sql
CREATE DATABASE trabalho_catalogo;

USE trabalho_catalogo;

CREATE TABLE produto (
    id INT PRIMARY KEY NOT NULL,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    vendedor VARCHAR(100) NOT NULL
);

CREATE TABLE usuario (
	id_usuario INT PRIMARY KEY NOT NULL,
    nome VARCHAR(100) NOT NULL,
    senha VARCHAR(100) NOT NULL,
    CHECK (CHAR_LENGTH(senha)  >=8 ),
    email VARCHAR(255),
    CHECK (email LIKE '%@%')
);

-- Execute o conteúdo de main.sql aqui
```

Altere o host, user, password e database no seu `index.ts` para refletir os dados corretos da conexão MySQL.

### 4. Inicie o servidor

Para desenvolvimento (com `tsx`):
```bash
npm run dev
```

Para produção (com build TypeScript):
```bash
npm run build
npm start
```

Se tudo estiver certo, você verá:
```
Server listening at http://localhost:8002
```

## 🌐 URLs para usar

- [http://localhost:8002/index.html](http://localhost:8002/index.html) – Cadastro de produtos
- [http://localhost:8002/produtos.html](http://localhost:8002/produtos.html) – Listagem dos produtos

## 🔁 Rotas da API

| Método | Rota       | Descrição                      |
|--------|------------|--------------------------------|
| GET    | /produto   | Retorna todos os produtos      |
| POST   | /produto   | Cadastra um novo produto       |

## ✅ Requisitos

- Node.js 18+
- MySQL instalado e rodando

## 🧠 Observações

- Não abra os arquivos HTML via `file://`. Sempre use `http://localhost:8002/` para garantir que o `fetch()` funcione.
- Os arquivos HTML estão servidos via `@fastify/static`.

## 📝 Licença

Projeto feito por Leonardo-capy. Livre para uso educacional.
```
