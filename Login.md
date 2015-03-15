## Login ##

Visitante efetua login como usuário do sistema para ter acesso às suas funcionalidades.

**Pré-condições:** Não há sessão ativa de usuário.

**Fluxo Principal**
  * 1. O visitante acessa a página de login do sistema..
  * 2. O sistema apresenta um formulário para login como usuário.
  * 3. O visistante preenche o formulário e clica no botão "Login".
  * 4. O sistema realiza a autenticação do usuário, o redireciona para sua página inicial e o caso de uso termina.

**Fluxo de Exceção (4): Autenticação falhou**
  * a. Se o visistante não preencher algum campo obrigatório, o sistema apresenta aviso de erro com quais campos devem preenchidos e o caso de uso segue a partir do item 3.
  * b. Se os dados informandos não autenticarem como usuário, o sistema apresenta aviso de erro de autenticação e o caso de uso segue a partir do item 3.

**Pós-condições:** O visitante efetua login como usuário.


## Logout ##

Usuário realiza logout para sair do sistema.

![https://les-2013-1.googlecode.com/svn/wiki/img/efetuar_logout.png](https://les-2013-1.googlecode.com/svn/wiki/img/efetuar_logout.png)

**Pré-condições:** Há sessão ativa de usuário.

**Fluxo Principal**
  * 1. O usuário clica no botão "Logout", sempre visível no canto superior do sistema
  * 2. O sistema realiza o logout do usuário, o redireciona para a página de login e o caso de uso termina.

**Pós-condições:** O usuário realizou logout do sistema.