Principais comandos:

docker run (Executa uma imagem gerando um container)
  Exemplo: docker run hello-world
  Principais parâmetros:
    -p (Conecta uma porta do container com um porta da máquina provedora)
    Exemplo: docker run -p 80:80 nginx
    -v (Conecta uma pasta do container com uma pasta da máquina provedora)
    Exemplo: docker run -v /home:/home ubuntu
    -i
    Exemplo:

docker start (Inicia um container)

docker stop (Interronpe a execução de um container)

docker build (Cria uma imagem a paitir de um arquivo Dockerfile)

docker container (Manipula containers)

docker image (Manipula imagems)
