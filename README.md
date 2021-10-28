# README

# Routes

## Laboratorios
### POST /laboratorios

```json
{
	"nome": "VituLab",
	"endereco": "Cajuru",
	"status": "inativo"
}
```
### GET /laboratorios?exame=nome

- O parametro exame é opcional e filtra os laboratorios que possuem exame com este nome.

### PATCH/PUT /laboratorios/1

#### Todos os parametros são opcionais, apenas altera o que for informado.

```json
{
	"nome": "VituLab",
	"endereco": "Cajuru",
	"status": "inativo"
}

```



