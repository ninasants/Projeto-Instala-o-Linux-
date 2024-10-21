## 1. Abra o prompt de comando PowerShell como administrador e digite o comando:
   ```PowerShell
   wsl --install
   ```
2. Caso você não tenha o Ubuntu na sua máquina, digite no prompt de comando:


wsl --install -d <NomeDaDistro>
   Exemplo: 
```PowerShel
   wsl --install -d Ubuntu
   ```
3. Para uma nova instalação, será solicitado a criação de um usuário e senha:
```bash
Enter new UNIX username: mariana
New password:
Retype new password:
passwd: password updated successfully
Installation successful!
```
Leia ``` man sudo_root ```para mais detalhes.

4. Para instalar o nginx, no terminal digite o comando:

```
sudo apt install nginx
```

5. Para verificar se o servidor ngnix está online e rodando:

   Abra o browser clique na barra de pesquisa e digite localhost
   
Para conectar o Git do terminal ao GitHub, é necessário a criação e autenticação de uma chave SSH. Aqui estão os passos detalhados\;

Criar uma chave SSH: Primeiro, você precisa gerar uma chave SSH no seu computador. Abra o terminal e digite:
```
ssh-keygen -t ed25519 -C "seuemail"
```
Substitua "seu-email@example.com" pelo e-mail associado à sua conta no GitHub. 

Para conectar o seu terminal git ao github digite o código: 
```
ssh -T git@github.com
```
Depois, inicie o serviço do Nginx e habilite-o para iniciar automaticamente na inicialização:

systemctl start nginx
systemctl enable nginx

6. Criar o script de validação
Crie um arquivo de script chamado script.sh

nano script.sh

Cole o seguinte código no arquivo script.sh que está disponivel dentro do repositório projeto-instala-o-linux, script.sh no github.



7. Dar permissão de execução ao script
Depois de salvar o arquivo, saia do editor e dê permissão de execução ao script:

Digite os códigos abaixo: 
```
chmod 777 script.sh
./script.sh 
```

8. Automatize a execução do script
Para executar o script a cada 5 minutos, você pode usar o cron. Abra o crontab para edição:

crontab -e

Adicione a seguinte linha ao final do arquivo:
```
* * * * * /root/script.sh
```
Salve e saia do editor. O cron agora executará o seu script a cada 5 minutos.

Depois digite 1 no terminal de comandos 

1 = Serve para escolher o editor de texto.

9. Para verificar se o servidor ngnix está funcionando: 
   Abra o browser clique na barra de pesquisa e digite localhost


10. Para verificar se o servidor nginx está online digite o comando abixo no terminal:

```
 cat status_online.log
```
E vai aparecer as mensagens abaixo no terminal:
```
nginx Status: ONLINE - O serviço está rodando perfeitamente!
nginx Status: ONLINE - O serviço está rodando perfeitamente!
nginx Status: ONLINE - O serviço está rodando perfeitamente!
```
 Para parar o nginx e criar a pasta de serviço offline, digite no terminal de comando: 
 ```
systemctl stop nginx 
ls
```
Para verificar se o nginx está offline digite o comando abaixo no terminal: 
```
status_online.log
cat status_offline.log
```

E vai aparecer as mensagens abaixo no seu terminal:

```
nginx Status: OFFLINE - O serviço está parado!
nginx Status: OFFLINE - O serviço está parado!
```
