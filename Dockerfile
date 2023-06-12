# Defina qual distro do linux vc quer usar
FROM ubuntu:latest

# Instale as dependencias do SISTEMA OPERACIONAL
# Exemplo de como seria no ubuntu: RUN apt update && apt install -y python3 python3-pip libpq-dev
RUN apt-get update 

RUN apt install python3 python3-pip libpq-dev 

# Instala o postgresql 
RUN apt-get -y -qq install postgresql-12 


WORKDIR /app
COPY . /app

# Sua imagem deve ter o python 3.8+ instalado e o pip
RUN pip install -r requirements.txt


# Executa o notebook 

CMD []