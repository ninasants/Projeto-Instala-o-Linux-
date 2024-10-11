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

4. No terminal digite o comando:

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

