# My Malala

My malala é um projeto do curso Mulheres em cloud, uma parceria feita entre Gama Academy e McKinsey & Company no Brasil.
Nada mais é que uma plataforma de video aulas desenvolvida com foco no público feminino.
Com grande inspiração na ativista paquistanesa Malala Yousafzai que luta de forma ativa e com sua vida pelo acesso das mulheres à educação.




## Documentação da API

#### Retorna itens clientes

```http
  GET /clientes
```

| Parâmetro   | Tipo       | Descrição                           |
| :---------- | :--------- | :---------------------------------- |
| `api_key` | `string` | Listar |

#### Retorna clientes

```http
  GET /api/items/${id}
```

| Parâmetro   | Tipo       | Descrição                                   |
| :---------- | :--------- | :------------------------------------------ |
| `GET`      | `string` | método REST get|

Lista os clientes da base MySql consultoria cravo e canela.

#### PUT

```http
   PUT /clientes / {id}
```

| Parâmetro   | Tipo       | Descrição                           |
| :---------- | :--------- | :---------------------------------- |
| `api_key` | `string` | alterar |

#### Delete

```http
  delete /clientes / {id}
```

| Parâmetro   | Tipo       | Descrição                           |
| :---------- | :--------- | :---------------------------------- |
| `api_key` | `string` | remover |


#### Post

```http
  Post /clientes/cadastrar
```

| Parâmetro   | Tipo       | Descrição                           |
| :---------- | :--------- | :---------------------------------- |
| `api_key` | `string` | cadastrar |

#### POST

```http
POST /clientes / login
```

| Parâmetro   | Tipo       | Descrição                           |
| :---------- | :--------- | :---------------------------------- |
| `api_key` | `string` | login |


#### GET

```http
  GET /videos
```

| Parâmetro   | Tipo       | Descrição                           |
| :---------- | :--------- | :---------------------------------- |
| `api_key` | `string` | listar |


#### GET

```http
  GET /videos / {id}
```

| Parâmetro   | Tipo       | Descrição                           |
| :---------- | :--------- | :---------------------------------- |
| `api_key` | `string` | detalhar |


#### PUT

```http
  PUT/VIDEOS{id}/classificado
```

| Parâmetro   | Tipo       | Descrição                           |
| :---------- | :--------- | :---------------------------------- |
| `api_key` | `string` | classificar |


#### PUT

```http
  PUT /videos/{id}/concluido
```

| Parâmetro   | Tipo       | Descrição                           |
| :---------- | :--------- | :---------------------------------- |
| `api_key` | `string` | concluir |


#### GET

```http
  GET /videos/concluidos
```

| Parâmetro   | Tipo       | Descrição                           |
| :---------- | :--------- | :---------------------------------- |
| `api_key` | `string` | listar videos concluídos |

## Apêndice

Coloque qualquer informação adicional aqui


## Autores

- Camila Queiroz
- Gabrielle Gushiken
- Isabela de Oliveira
- Miriam Sobral
## Documentação de cores

| Cor               | Hexadecimal                                                |
| ----------------- | ---------------------------------------------------------------- |
| Cor 1     | ![#170132](https://via.placeholder.com/10/0a192f?text=+) #170132 |
| Cor 2   | ![#361542](https://via.placeholder.com/10/f8f8f8?text=+) #361542 |
| Cor 3   | ![#85AE72](https://via.placeholder.com/10/00b48a?text=+) #85AE72|
| Cor 4    | ![#EAFDE6](https://via.placeholder.com/10/00b48a?text=+) #EAFDE6 |


## Documentação

[Documentação](https://link-da-documentação)


## Funcionalidades

- Criação de usuário
- Histórico de videos
- Visualização de vídeos
- Exclusão de conta


## Melhorias

Realizamos a adição da opção apagar seu perfil, mas continuar na base de dados, tornando mais fácil a reativação da conta.
 Ainda temos que melhorar a questão de acessibilidade, mas está no backlog da aplicação.

## Exemplos

```javascript
 <link rel="stylesheet" href="styleSenha.css">
    <title>Alterar sua senha</title>
```


![Logo](data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPHN2ZyB3aWR0aD0iNzUycHQiIGhlaWdodD0iNzUycHQiIHZlcnNpb249IjEuMSIgdmlld0JveD0iMCAwIDc1MiA3NTIiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CiA8Zz4KICA8cGF0aCBkPSJtNDUxLjMgMzI3LjdjLTIuMzY3Mi0yLjM2NzItMTUuMTU2LTE0LjY4LTI5LjM2My0xOC40NjktNC4yNjE3LTAuOTQ1MzEtOC41MjM0LTEuNDIxOS0xMy4yNjItMS40MjE5LTEwLjQxOCAwLTIyLjczIDIuMzY3Mi0zMS4yNTggNi42Mjg5LTAuNDcyNjYgMC40NzI2Ni0wLjk0NTMxIDAuOTQ1MzEtMS40MjE5IDEuNDIxOS0wLjQ3MjY2IDEuNDIxOS0wLjk0NTMxIDYuNjI4OSAwLjk0NTMxIDguOTk2MSAwLjk0NTMxIDAuOTQ1MzEgMS44OTQ1IDEuNDIxOSAzLjMxNjQgMS40MjE5IDAuNDcyNjYgMCAxLjQyMTkgMCAxLjg5NDUtMC40NzI2NiAxNS4xNTYtNS42ODM2IDI1LjU3NC04LjA1MDggMzUuNTItOC4wNTA4aDAuOTQ1MzFjNi4xNTYyIDAgMjQuMTUyIDkuNDcyNyAzMC43ODEgMTMuMjYyIDAuNDcyNjYgMCAwLjk0NTMxIDAuNDcyNjYgMC45NDUzMSAwLjQ3MjY2IDEuNDIxOSAwIDIuMzY3Mi0wLjk0NTMxIDIuMzY3Mi0yLjM2NzItMC40NjQ4NC0wLjQ3MjY2LTAuOTM3NS0xLjQyMTktMS40MTAyLTEuNDIxOXoiLz4KICA8cGF0aCBkPSJtMzUzLjc0IDMxNC40NGMtMC45NDUzMS0wLjQ3MjY2LTIxLjMxMi03LjEwNTUtMzUuOTkyLTcuMTA1NS00LjczNDQgMC04LjUyMzQgMC40NzI2Ni0xMS4zNjcgMS44OTQ1LTkuNDcyNyA0LjczNDQtMTcuOTk2IDE4LjQ2OS0xOC40NjkgMTguOTQxLTAuNDcyNjYgMC45NDUzMS0wLjQ3MjY2IDIuMzY3MiAwLjQ3MjY2IDMuMzE2NCAwLjQ3MjY2IDAuNDcyNjYgMC45NDUzMSAwLjQ3MjY2IDEuNDIxOSAwLjQ3MjY2IDAuOTQ1MzEgMCAxLjQyMTktMC40NzI2NiAxLjg5NDUtMC45NDUzMSAwIDAgOC45OTYxLTEyLjMxMiAxNy41MjMtMTIuNzg1IDExLjg0LTAuOTQ1MzEgMjUuMTAyIDIuODM5OCAzMy42MjUgNS42ODM2IDcuMTA1NSAyLjM2NzIgOS40NzI3IDIuODM5OCAxMC44OTEgMS40MjE5IDMuMzE2NC0yLjgzOTggMi4zNjcyLTcuMTA1NSAxLjQyMTktOC45OTYxLTAuNDcyNjYtMS40MjU4LTAuOTQ5MjItMS44OTg0LTEuNDIxOS0xLjg5ODR6Ii8+CiAgPHBhdGggZD0ibTQzMi4zNiAzMzUuNzVjLTAuNDcyNjYtMC40NzI2Ni03LjEwNTUtOS40NzI3LTE4LjQ2OS0xMC40MTgtMjIuMjU4LTIuMzY3Mi0yNy40NjkgMTYuMTAyLTI3LjQ2OSAxNi4xMDIgMCAwLjk0NTMxIDAgMS40MjE5IDAuNDcyNjYgMi4zNjcyIDAuNDcyNjYgMC40NzI2NiAxLjQyMTkgMC45NDUzMSAyLjM2NzIgMC40NzI2NiAyLjM2NzItMC40NzI2NiA2LjE1NjIgMCAxMC40MTggMC45NDUzMSA0LjI2MTcgMC45NDUzMSA4LjUyMzQgMS44OTQ1IDEzLjI2MiAxLjg5NDUgNy41NzgxIDAgMTQuMjA3LTIuODM5OCAxOC45NDEtOC41MjM0IDEuNDIxOS0wLjk0NTMxIDEuNDIxOS0yLjM2NzIgMC40NzY1Ni0yLjgzOTh6bS0xOC45NDUgNi42MzI4Yy00LjI2MTcgMC04LjUyMzQtMC45NDUzMS0xMi4zMTItMS44OTQ1LTIuODM5OC0wLjQ3MjY2LTUuNjgzNi0xLjQyMTktOC41MjM0LTEuNDIxOSAxLjQyMTktMi4zNjcyIDQuMjYxNy01LjY4MzYgOC45OTYxLTguMDUwOHYxLjQyMTljMCA1LjIxMDkgNC4yNjE3IDkuNDcyNyA5LjQ3MjcgOS40NzI3czkuNDcyNy00LjI2MTcgOS40NzI3LTkuNDcyN3YtMS40MjE5YzMuNzg5MSAxLjQyMTkgNi4xNTYyIDQuMjYxNyA3LjU3ODEgNS42ODM2LTQuMjY1NiAzLjc4OTEtOSA1LjY4MzYtMTQuNjg0IDUuNjgzNnoiLz4KICA8cGF0aCBkPSJtMzQ1LjY5IDMzOC4xMWMtMC45NDUzMS0yLjgzOTgtNS42ODM2LTE0LjY4LTIxLjMxMi0xNC42OC0zLjMxNjQgMC03LjEwNTUgMC40NzI2Ni0xMS4zNjcgMS44OTQ1LTIuODM5OCAwLjk0NTMxLTcuNTc4MSAzLjc4OTEtOS45NDUzIDYuMTU2Mi0wLjQ3MjY2IDAuNDcyNjYtMC40NzI2NiAxLjQyMTktMC40NzI2NiAyLjM2NzIgMCAwLjQ3MjY2IDUuMjEwOSAxMS4zNjcgMTkuNDE4IDExLjM2NyAzLjMxNjQgMCA2LjYyODktMC40NzI2NiA5Ljk0NTMtMS40MjE5IDcuNTc4MS0yLjM2NzIgOS45NDUzLTIuMzY3MiAxMC40MTgtMi4zNjcyaDAuNDcyNjZjMS40MjE5IDAgMi4zNjcyLTAuOTQ1MzEgMi4zNjcyLTIuMzY3MiAwLjk0OTIyIDAgMC45NDkyMi0wLjQ3MjY2IDAuNDc2NTYtMC45NDkyMnptLTE0LjIwNyAxLjQyMTljLTMuMzE2NCAwLjk0NTMxLTYuMTU2MiAxLjQyMTktOC45OTYxIDEuNDIxOS04LjUyMzQgMC0xMi43ODUtNS4yMTA5LTE0LjY4LTcuNTc4MSAxLjg5NDUtMS40MjE5IDQuNzM0NC0zLjMxNjQgNi42Mjg5LTMuNzg5MSAwLjk0NTMxLTAuNDcyNjYgMS44OTQ1LTAuNDcyNjYgMy4zMTY0LTAuOTQ1MzEtMC40NzI2NiAwLjQ3MjY2LTAuNDcyNjYgMS40MjE5LTAuNDcyNjYgMi44Mzk4IDAgNC43MzQ0IDMuNzg5MSA4LjUyMzQgOC41MjM0IDguNTIzNCA0LjczNDQgMCA4LjUyMzQtMy43ODkxIDguNTIzNC04LjUyMzR2LTEuNDIxOWMzLjMxNjQgMS44OTQ1IDUuMjEwOSA0LjczNDQgNi4xNTYyIDYuNjI4OS0xLjg5NDUgMC45NDkyMi00LjczODMgMS44OTg0LTkgMi44NDM4eiIvPgogIDxwYXRoIGQ9Im00MDYuNzkgNDI5LjUydi0wLjk0NTMxLTAuNDcyNjZzMC0wLjQ3MjY2LTAuNDcyNjYtMC40NzI2NmMwIDAgMC0wLjQ3MjY2LTAuNDcyNjYtMC40NzI2NmgtMC40NzI2Ni0wLjQ3MjY2LTAuNDcyNjYtMC40NzI2Ni0wLjQ3MjY2LTAuNDcyNjZjLTAuNDcyNjYgMC0yLjgzOTggMC45NDUzMS02LjYyODkgMC45NDUzMS00LjI2MTcgMC04LjUyMzQtMC45NDUzMS0xMi4zMTItMi44Mzk4LTMuMzE2NC0xLjQyMTktNi42Mjg5LTIuMzY3Mi05Ljk0NTMtMi4zNjcyLTQuNzM0NCAwLTcuNTc4MSAxLjQyMTktOS45NDUzIDIuODM5OGgtMS40MjE5Yy0xLjg5NDUtMS40MjE5LTUuMjEwOS0zLjMxNjQtOS45NDUzLTMuMzE2NC0xLjQyMTkgMC0zLjMxNjQgMC40NzI2Ni01LjIxMDkgMC45NDUzMXMtMy4zMTY0IDAuOTQ1MzEtNC43MzQ0IDAuOTQ1MzFjLTQuNzM0NCAwLTcuNTc4MS0yLjM2NzItNy41NzgxLTIuMzY3MmgtMC40NzI2Ni0wLjQ3MjY2LTAuNDcyNjYtMC40NzI2Ni0wLjQ3MjY2LTAuNDcyNjYtMC40NzI2NnYwLjQ3MjY2IDAuNDcyNjYgMC40NzI2NiAwLjQ3MjY2IDAuNDcyNjYgMC40NzI2NmMwLjQ3MjY2IDEuNDIxOSA4LjA1MDggMjUuNTc0IDMyLjIwMyAyNi4wNDdoMi44Mzk4YzYuNjI4OSAwIDIyLjI1OC0xLjg5NDUgMzguMzU5LTE5LjQxOHYtMC40NzI2NmMwLjkzNzUtMC40NjQ4NCAwLjkzNzUtMC40NjQ4NCAxLjQxMDItMS40MTQxLTAuNDcyNjYgMC40NzI2Ni0wLjQ3MjY2IDAuNDcyNjYgMCAweiIvPgogIDxwYXRoIGQ9Im0zODguNzkgMzg2LjQyYy0wLjk0OTIyLTAuOTQ5MjItMi4zNjcyLTEuNDIxOS0zLjMxNjQtMC45NDkyMi0wLjk0NTMxIDAuNDcyNjYtMS40MjE5IDEuODk0NS0wLjk0NTMxIDMuMzE2NCAwLjk0NTMxIDEuNDIxOSAyLjM2NzIgNS42ODM2IDEuNDIxOSA4LjA1MDggMCAwLjQ3MjY2LTAuOTQ1MzEgMS44OTQ1LTMuNzg5MSAyLjM2NzJoLTEuNDIxOWMwLTAuNDcyNjYgMC40NzI2Ni0wLjQ3MjY2IDAuNDcyNjYtMC45NDUzMSAwLTEuNDIxOS0wLjk0NTMxLTIuMzY3Mi0yLjM2NzItMi4zNjcyLTMuNzg5MSAwLTUuNjgzNiAxLjg5NDUtNy4xMDU1IDMuMzE2NC0xLjQyMTkgMS40MjE5LTIuODM5OCAyLjgzOTgtOC4wNTA4IDIuODM5OC0zLjMxNjQgMC00LjczNDQtMS40MjE5LTYuMTU2Mi0yLjgzOTgtMS44OTQ1LTEuNDIxOS0zLjc4OTEtMy4zMTY0LTguMDUwOC0zLjMxNjQtMS40MjE5IDAtMi4zNjcyIDAuOTQ1MzEtMi4zNjcyIDIuMzY3MnYwLjk0NTMxYy0xLjg5NDUtMC40NzI2Ni0zLjMxNjQtMC45NDUzMS0zLjc4OTEtMi4zNjcyLTAuOTQ1MzEtMi4zNjcyIDAuOTQ1MzEtNi42Mjg5IDEuNDIxOS03LjU3ODEgMC40NzI2Ni0wLjk0NTMxIDAuNDcyNjYtMi4zNjcyLTAuOTQ1MzEtMy4zMTY0LTAuOTQ1MzEtMC40NzI2Ni0yLjM2NzItMC40NzI2Ni0zLjMxNjQgMC45NDUzMS0wLjQ3MjY2IDAuNDcyNjYtNC4yNjE3IDcuMTA1NS0xLjg5NDUgMTEuODQgMS40MjE5IDIuODM5OCAzLjc4OTEgNC4yNjE3IDcuNTc4MSA1LjIxMDkgMC45NDUzMSAwIDIuMzY3MiAwLjQ3MjY2IDMuMzE2NCAwLjQ3MjY2IDEuNDIxOSAwIDIuMzY3MiAwIDQuMjYxNy0wLjQ3MjY2IDAgMCAwLjQ3MjY2IDAgMC40NzI2Ni0wLjQ3MjY2IDEuODk0NSAxLjg5NDUgNC4yNjE3IDMuNzg5MSA4Ljk5NjEgMy43ODkxaDAuNDcyNjZjNi42Mjg5IDAgOC45OTYxLTIuMzY3MiAxMC44OTEtNC4yNjE3aDAuNDcyNjZjMS44OTQ1IDAuNDcyNjYgMy43ODkxIDAuOTQ1MzEgNS42ODM2IDAuOTQ1MzFoMS44OTQ1YzQuMjYxNy0wLjk0NTMxIDYuNjI4OS0yLjgzOTggNy4xMDU1LTQuNzM0NCAyLjg0MzgtNS42ODM2LTAuNDcyNjYtMTEuODQtMC45NDUzMS0xMi43ODV6Ii8+CiAgPHBhdGggZD0ibTM3NC41OCA1MzkuODZjOC45OTYxIDEuODk0NSAxOC40NjkgMS40MjE5IDI3Ljk0MS0zLjMxNjQgOS45NDUzLTQuNzM0NCAyMC44MzYtMTEuODQgMzIuMjAzLTE5LjQxOCAyNi4wNDctMTcuMDUxIDU1LjQxLTM2LjQ2NSA4OS41MDgtNDAuNzI3LTEuNDIxOS05Ljk0NTMtNS4yMTA5LTM0LjU3LTEyLjMxMi00Mi4xNDgtNy41NzgxLTguMDUwOC0xLjg5NDUtMzMuNjI1LTAuOTQ1MzEtNDQuOTg4IDAuNDcyNjYtOS40NzI3LTAuNDcyNjYtMjIuMjU4LTEuNDIxOS0zNS45OTItNi4xNTYyIDQ0LjUxNi0xOS40MTggOTcuNTU5LTQ1LjQ2NSAxMjQuNTUtMzcuODkxIDM5Ljc4MS02MS41NjYgNTYuODMyLTg5LjUwOCA2Mi4wMzl6Ii8+CiAgPHBhdGggZD0ibTU1MS43IDQ4NS44N2MtNC43MzQ0LTMuNzg5MS0xMC44OTEtNS4yMTA5LTE2LjEwMi01LjY4MzYtMzcuODg3IDAuOTQ1MzEtNjkuNjE3IDIxLjc4NS05OC41MDQgNDAuNzI3LTExLjg0IDcuNTc4MS0yMi43MyAxNC42OC0zMi42NzYgMTkuODkxLTYuNjI4OSAzLjMxNjQtMTMuNzM0IDQuNzM0NC0yMC4zNjMgNC43MzQ0LTI4LjQxNCAwLTU1LjQxLTI1LjU3NC02Ny4yNS00NS45MzgtNC4yNjE3LTcuMTA1NS05Ljk0NTMtMTMuMjYyLTE2LjEwMi0yMC4zNjMtMTMuNzM0LTE0LjY4LTI3LjQ2OS0zMC4zMDktMjQuMTUyLTUzLjUxNiA0LjczNDQtMzEuNzMgMC45NDUzMS04MS40NTcgMC45NDUzMS04MS45MyAwLTAuNDcyNjYtMC40NzI2Ni0yLjgzOTgtMC45NDUzMS03LjEwNTUtMS40MjE5LTkuOTQ1My0yLjgzOTgtMjcuNDY5LTEuNDIxOS0zNy44ODcgMS40MjE5LTkuNDcyNyAzLjc4OTEtMjEuNzg1IDYuNjI4OS0zNC4wOTggMS40MjE5LTYuMTU2MiAzLjMxNjQtMTEuODQgNS4yMTA5LTE3LjA1MSAwLTAuNDcyNjYgMC40NzI2Ni0wLjk0NTMxIDAuNDcyNjYtMS40MjE5IDAuNDcyNjYtMS40MjE5IDAuOTQ1MzEtMi4zNjcyIDEuNDIxOS0zLjc4OTEgMC0wLjQ3MjY2IDAuNDcyNjYtMC45NDUzMSAwLjQ3MjY2LTEuNDIxOSAwLjQ3MjY2LTAuOTQ1MzEgMC45NDUzMS0xLjg5NDUgMS40MjE5LTIuODM5OCAwLjQ3MjY2LTAuNDcyNjYgMC40NzI2Ni0wLjk0NTMxIDAuOTQ1MzEtMS40MjE5IDAuNDcyNjYtMC45NDUzMSAwLjk0NTMxLTEuODk0NSAxLjQyMTktMi4zNjcyIDAuNDcyNjYtMC40NzI2NiAwLjQ3MjY2LTAuOTQ1MzEgMC45NDUzMS0xLjQyMTkgMC40NzI2Ni0wLjk0NTMxIDAuOTQ1MzEtMS40MjE5IDEuNDIxOS0yLjM2NzIgMC40NzI2Ni0wLjQ3MjY2IDAuNDcyNjYtMC45NDUzMSAwLjk0NTMxLTAuOTQ1MzEgMC45NDUzMS0wLjk0NTMxIDEuNDIxOS0xLjg5NDUgMi4zNjcyLTIuODM5OCAwLjk0NTMxLTAuOTQ1MzEgMi4zNjcyLTEuODk0NSAzLjMxNjQtMi44Mzk4bDAuNDcyNjYtMC40NzI2NmM2LjE1NjItNC4yNjE3IDEzLjI2Mi03LjEwNTUgMjEuNzg1LTkuOTQ1MyA5LjQ3MjctMy43ODkxIDIwLjM2My03LjU3ODEgMzMuNjI1LTE1LjE1NiAxNy4wNTEtOS45NDUzIDQwLjI1NC01LjY4MzYgNTMuMDQzLTEuODk0NSAxOC40NjkgNS4yMTA5IDM1LjA0NyAxNC4yMDcgMzkuMzA5IDIxLjc4NSAwLjk0NTMxIDEuODk0NSAyLjM2NzIgMy43ODkxIDMuMzE2NCA1LjY4MzYgNy41NzgxIDEyLjc4NSAxOC40NjkgMjkuODM2IDI2LjUyIDc1LjMwMSAwIDAuNDcyNjYgMCAxLjQyMTkgMC40NzI2NiAyLjM2NzJ2MS44OTQ1IDAuOTQ1MzEgMi44Mzk4IDAuNDcyNjZjMCAwLjk0NTMxIDAgMi4zNjcyLTAuNDcyNjYgMy43ODkxLTAuOTQ1MzEgMTEuMzY3LTMuMzE2NCAyNi41Mi01LjIxMDkgMzYuNDY1LTAuOTQ1MzEgNC43MzQ0LTEuNDIxOSA4LjA1MDgtMS44OTQ1IDkuOTQ1M3YwLjQ3MjY2IDAuNDcyNjZjLTExLjg0IDY4LjE5NS00My4wOTggOTguMDMxLTYxLjU2NiAxMDkuODctMC45NDUzMSAwLjQ3MjY2LTEuODk0NSAwLjk0NTMxLTIuODM5OCAxLjQyMTktMTcuOTk2IDEwLjg5MS0zNS41MiAxMy4yNjItNDUuNDY1IDEwLjQxOC0xNC42OC00LjI2MTctMjYuNTItMTEuODQtMzYuNDY1LTIxLjMxMi0yNy40NjktMjYuNTItMzguMzU5LTY3LjcyMy00My4wOTgtOTEuNDAyIDAuNDcyNjYgMTcuNTIzIDAuNDcyNjYgNDEuMjAzLTEuODk0NSA1OS4xOTktMy4zMTY0IDIwLjgzNiA5LjQ3MjcgMzUuMDQ3IDIyLjczIDQ5LjcyNyA1LjY4MzYgNi4xNTYyIDExLjM2NyAxMi4zMTIgMTUuNjI5IDE4Ljk0MSAxLjg5NDUgMy4zMTY0IDUuMjEwOSA4LjA1MDggOC41MjM0IDEyLjMxMiA4Ljk5NjEgMTAuODkxIDIxLjc4NSAyMi43MyAzNi40NjUgMjguODg3IDMwLjc4MS0yLjgzOTggNTQuOTM0LTE4LjQ2OSA5NS42NjQtNjEuNTY2IDMwLjc4MS0zMi42NzYgNDMuNTctMTAyLjc3IDQ2Ljg4My0xNDkuNjUgMC00LjczNDQgMC04Ljk5NjEgMC40NzI2Ni0xMy4yNjIgMS44OTQ1LTI3LjQ2OS0yNS4xMDItMTU0Ljg2LTEyMy4xMy0xNDguNy0xMDIuNzcgNi4xNTYyLTk5LjQ1MyA2MC4xNDUtMTE2LjUgODIuODc1LTE3LjA0MyAyMi43NS0yMi4yNTQgNTMuNTMxLTIwLjM1OSA2NC40MjYgMS44OTQ1IDEwLjg5MSA1LjIxMDkgNTEuNjIxLTIuODM5OCA3MC41NjItOC4wNTA4IDE4Ljk0NS04LjUyMzQgNTUuODgzLTEyLjc4NSA2MS4wOTQtMTIuNzg5IDE2LjEwMi0yLjg0MzggNzAuMDktMjYuMDQ3IDc1LjI5Ny0yMy4yMDcgNS4yMTA5LTM1LjUyIDcxLjAzOS0zNS41MiA3MS4wMzloNDEwLjEyYy00LjczODMtNzIuNDU3LTE1LjE1Ni05MS40MDItMjkuMzYzLTEwMy4yNHptLTIyMC42OSAxNy45OTZjLTIuMzY3Mi0zLjMxNjQtNS4yMTA5LTcuMTA1NS03LjEwNTUtOS45NDUzIDYuMTU2Mi03LjEwNTUgNS42ODM2LTE4LjQ2OSAzLjc4OTEtMjYuOTkyIDkuOTQ1MyA4LjUyMzQgMjEuMzEyIDE0LjIwNyAzMy4xNTIgMTcuOTk2IDMuNzg5MSAwLjk0NTMxIDkuNDcyNyAxLjQyMTkgMTUuNjI5IDAuOTQ1MzEtMTcuNTIzIDcuNTc4MS0zNS41MiAxNC42ODQtNDUuNDY1IDE3Ljk5NnoiLz4KICA8cGF0aCBkPSJtNDI0LjMxIDI1MS40NWM1LjY4MzYtOC45OTYxIDExLjg0LTE3Ljk5NiAxNi41NzQtMzYuNDY1LTUuNjgzNi00LjczNDQtMTYuNTc0LTEwLjQxOC0zMC43ODEtMTQuNjgtMjAuODM2LTUuNjgzNi00MC4yNTQtNS4yMTA5LTUyLjA5NCAxLjg5NDUtMTMuNzM0IDcuNTc4MS0yNS4xMDIgMTEuODQtMzQuMDk4IDE1LjYyOS05Ljk0NTMgMy43ODkxLTE3Ljk5NiA2LjYyODktMjQuMTUyIDEyLjMxMi04LjA1MDggNy41NzgxLTE2LjEwMiAzMi42NzYtMjEuNzg1IDY5LjYxNy0xLjQyMTkgOS40NzI3IDAgMjUuNTc0IDAuOTQ1MzEgMzUuMDQ3IDMuMzE2NC0xOC45NDEgNi42Mjg5LTIxLjMxMiAxMC44OTEtMjMuNjggMi44Mzk4LTEuODk0NSA2LjE1NjItMy43ODkxIDkuOTQ1My0xMC40MTggOC45OTYxLTE2LjEwMiAyOC44ODctMjUuNTc0IDU0LjQ2MS0yNS41NzRoNy4xMDU1YzI4LjQxNCAxLjg5NDUgNDYuODgzLTYuNjI4OSA1Ni4zNTUtMTIuMzEyIDAtMC40NzY1NiA0LjI2MTctNy41ODIgNi42MzI4LTExLjM3MXoiLz4KICA8cGF0aCBkPSJtNDc0Ljk4IDI5OS43NWMtOC4wNTA4LTQ0LjUxNi0xOC40NjktNjEuMDk0LTI2LjA0Ny03My40MDYtMS40MjE5LTEuODk0NS0yLjM2NzItNC4yNjE3LTMuNzg5MS02LjE1NjIgMC0wLjQ3MjY2LTAuNDcyNjYtMC40NzI2Ni0wLjQ3MjY2LTAuOTQ1MzEtNC43MzQ0IDE3LjUyMy0xMC44OTEgMjYuNTItMTYuNTc0IDM1LjA0Ny0yLjM2NzIgMy4zMTY0LTQuMjYxNyA2LjE1NjItNi4xNTYyIDkuOTQ1MyAyLjgzOTggMTMuMjYyIDkuNDcyNyAxOC45NDEgMTUuNjI5IDI0LjE1MiA1LjY4MzYgNC43MzQ0IDEwLjQxOCA4Ljk5NjEgMTEuODQgMTguOTQxIDEuODk0NSAxNC4yMDcgNy41NzgxIDE5LjQxOCAxMy4yNjIgMjQuMTUyIDIuODM5OCAyLjM2NzIgNS42ODM2IDUuMjEwOSA4LjA1MDggOC45OTYxIDEuODk0NS0xMS44NCA0LjI2MTctMjYuMDQ3IDQuMjYxNy0zNC41NyAwLjQ2ODc1LTIuODM5OC0wLjAwMzkwNi00LjczNDQtMC4wMDM5MDYtNi4xNTYyeiIvPgogPC9nPgo8L3N2Zz4K)

