# Defina qual distro do linux vc quer usar
FROM ubuntu:latest

WORKDIR /app
COPY . /app

# Instale as dependencias do SISTEMA OPERACIONAL
# Exemplo de como seria no ubuntu: RUN apt update && apt install -y python3 python3-pip libpq-dev
RUN apt-get update 
RUN apt-get install python3 python3-pip libpq-dev 

# Sua imagem deve ter o python 3.8+ instalado e o pip
#Atualização do gerenciador de pacotes
RUN pip3 install --upgrade pip 
RUN pip install -r requirements.txt

#executa o postgres
RUN sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list' 
RUN wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
RUN apt-get update && apt-get -y install postgresql



# Executa o notebook 
CMD ["jupyter", "notebook", "--ip 0.0.0.0", "--allow-root"]