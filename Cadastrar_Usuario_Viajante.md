## Cadastrar Usuário Viajante ##

Visitante se cadastra como usuário do tipo viajante no sistema.



![https://les-2013-1.googlecode.com/svn/wiki/img/usecase/manter_perfil_viajante.jpg](https://les-2013-1.googlecode.com/svn/wiki/img/usecase/manter_perfil_viajante.jpg)



**Pré-condições:** Não há sessão ativa de usuário.

**Fluxo Principal**
  * 1. O visitante clica no botão para efetuar cadastro na página inicial.
  * 2. O sistema apresenta um formulário para cadastro de usuário viajante.
  * 3. O visitante preenche o formulário e clica no botão "confirmar".
  * 4. O sistema redireciona o usuário para sua página inicial pessoal e o caso de uso termina.

**Fluxo de Exceção (4): Validação de campos**
  * a. Se o visitante não preencher algum campo obrigatório, o sistema apresenta aviso de erro com quais campos devem preenchidos e o caso de uso segue a partir do item 3.
  * b. Se os campos de e-mail e confirmação de e-mail não coincidirem em valor, o sistema apresenta aviso de erro informando que os e-mails não são iguais e o caso de uso segue a partir do item 3.
  * c. Se os campos de senha e confirmação de senha não coincidirem em valor, o sistema apresenta aviso de erro informando que as senhas não são iguais e o caso de uso segue a partir do item 3.

**Pós-condições:** O visitante efetuou o cadastro como usuário viajante.