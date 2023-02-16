Comonota:


## 1password
ofrece la opción de agregar una interación entre tus keys con github de uyna manera quizás un poco más seguras (no se)


` eval "$(ssh-agent -s)"` => para iniciar el agente ssh en segundo plano
https://docs.github.com/es/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent

`ssh-add -l` => lista las llaves disponible

`ssh-keygen -t ed25519-sk -C "YOUR_EMAIL"` => para crear una llave
https://docs.github.com/es/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent


Un ejemplo interesante es separar tus llaves para identificar en `ssh/config`

```
# Personal GitHub
Host personalgit
    HostName github.com
    User git
    IdentityFile ~/.ssh/personal_git.pub
    IdentitiesOnly yes
    # Work GitHub
Host workgit
    HostName github.com
    User git
    IdentityFile ~/.ssh/work_git.pub
    IdentitiesOnly yes
```



https://developer.1password.com/docs/ssh/agent/?utm_medium=organic&utm_source=oph&utm_campaign=linux

https://developer.1password.com/docs/ssh/agent/advanced#gradual-migration





## para cosas de Github

para ver y asignar la url al repo remoto 
$ git remote add origin <REMOTE_URL>
# Sets the new remote
$ git remote -v
# Verifies the new remote URL


#### Source
https://docs.github.com/en/get-started/importing-your-projects-to-github/importing-source-code-to-github/adding-locally-hosted-code-to-github
