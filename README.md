# README

# Routes

## Laboratorios.
### POST /laboratorios

```json
{
	"nome": "VituLab",
	"endereco": "Cajuru",
	"status": "inativo"
}
```
### GET /laboratorios?exame=nome

#### O parametro exame é opcional e filtra os laboratorios que possuem exame com este nome.

### PATCH/PUT /laboratorios/1

#### Todos os parametros são opcionais, apenas altera o que for informado.

```json
{
	"nome": "VituLab",
	"endereco": "Cajuru",
	"status": "inativo"
}

```

 ### DELETE /laboratorios/1

#### Deleta um loboratório.

## Exames.

### POST /exames

```json
{
	"tipo": "imagem",
	"nome": "teste"
}
```

### GET /exames

#### Lista todos os exames.

### PATCH/PUT /exames/1

#### Todos os parametros são opcionais, apenas altera o que for informado.

### DELETE /exames/1

#### Deleta um exame.

### POST /associar

#### Associa um exame a um laboratório.

```json
{
	"laboratorio_id": 1
}
```

 ### POST /desassociar

 #### Desassocia um exame a um laboratório.

 ```json
{
	"laboratorio_id": 1
}
```