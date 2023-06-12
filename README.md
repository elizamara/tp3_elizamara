# TP3 UFAM_DB

Repositorio base para o Trabalho 3 de Banco de Dados da Graduação em Ciencia da Computação na UFAM
[Link do trabalho](https://docs.google.com/document/d/17Uobq1brb6TbbCr64DWCEWG9J-LAGpgXuOC3BVpczx4/edit#)



    
### Docker

Instalando o [docker desktop (Windows, Linux e Mac)](https://www.docker.com/products/docker-desktop/)

Instalando na linha de comando

[Docker](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-20-04-pt)

### Python e Virtualenv

Você deve configurar uma virtualenv do python para não instalar as bibliotecas no seu python do sistema.

Se seu python é 3.3+

```bash
python -m venv venv
source venv/bin/activate
```

Agora você pode instalar os pacotes do python:

```bash
pip install -r requirements.txt
```

## Rodando o docker

Primeiro, você deve configurar seu dockerfile:

1. Definir qual distro linux vai usar
2. Instalar Python3.8+ e Pip

Agora você pode construir sua imagem:

```bash
docker build . -t tp3
```

Depois que terminar, você pode rodar seu docker assim:

```bash
docker run -p 5433:5432 -v $(pwd)/datadir/:/app/datadir tp3 tp3 <comando para subir o postgres>
```

No jupyter notebook, você pode acessar o postgres na **porta 5433**\

O trabalho pede para testar varios formatos de sistema de arquivo. Para fazer isso, você deve montar tal um diretorio na sua maquina com o sistema de arquivo e passar ele para o docker.

Exemplo: Vou testar o **ext3**, depois de montar a pasta, farei o seguinte:

```bash
docker run -p 5433:5432 -v $(pwd)/datadir_ext3/:/app/datadir <comando para subir o postgres>
```
