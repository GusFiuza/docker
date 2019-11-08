# Docker

Este projeto destina-se a armazenar arquios Dockerfile para criação de imagens Docker com programas pré instalados.

Dockerfiles presentes:

1. Phyton3 e Jupyter Notebook

  Nome da imagem: gusfiuza/jupyter-notebook
  Versão atual: 0.1
  Data da criação: 03/11/2019

  Geração da imagem:
  
    - docker build -t gusfiuza/jupyter-notebook:0.1 -f jupyter.Dockerfile .

  Instruções de uso:

    - Com o Docker instalado, execute o terminal e acesse o pasta onde estão seus notebooks (arquivos ipynb);
    - No terminal linux execute
      - docker run -d -p 80:8888 -v $(pwd):/home --name jupyter gusfiuza/jupyter-notebook:0.1
      - docker exec jupyter jupyter notebook list
    - Copie o token apresentado (Somente os caracteres após "token=" e antes de "::" sem o espaço)
    - Abra seu navegador
    - Acesse localhost
    - Cole o token e tecle [ENTER]

2. Java e Maven

  Nome da imagem: gusfiuza/maven
  Versão atual: 0.1
  Data da criação: 08/11/2019
  
  Geração da imagem:
  
    - docker build -t gusfiuza/maven:0.1 -f maven.Dockerfile .
    
  Instruções de uso:

      - Com o Docker instalado, execute o terminal e acesse o pasta onde está seu projeto;
      - No terminal linux execute
        - docker run -it -v $(pwd):/home --name maven gusfiuza/maven:0.1
      - No terminal do container criado execute
      - java {seu arquivo}.java
