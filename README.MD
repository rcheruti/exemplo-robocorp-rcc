


Comando para executar o jenkins:
```
docker run -d -v jenkins_home:/var/jenkins_home -p 8080:8080 -p 50000:50000 --restart=on-failure jenkins/jenkins:lts-jdk11
```

Senha do Jenkins:
    `46912f4cdef845ec83f7116bd05d89d7`

Entrar no container como `root`:
    `docker exec -u 0 -it magical_hellman bash`



