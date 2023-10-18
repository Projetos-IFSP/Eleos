<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="public/favicon.svg" type="image/svg+xml">
    <link rel="stylesheet" href="styles/global.css">
    <link rel="stylesheet" href="styles/register.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <title>Cadastro</title>
</head>
<body>
    <main>
        <div class="container">
            <div class="form-box">
                <div class="register-container">
                    <div class="top">
                        <h1>Primeira vez por aqui?</h1>
                        <p>Estamos felizes em recebê-lo no <b>Eleos</b>, um lugar onde a generosidade encontra o poder de transformar vidas. Ao criar sua conta, você terá acesso a uma plataforma que conecta doadores como você às ONGs que estão fazendo um impacto real no mundo. Vamos começar a fazer a diferença juntos!</p>
                        <div style="display: flex; flex-direction: column;">
                            <span>Já tem uma conta? <a href="sign-in.jsp" onclick="login()">Login</a></span>
                            <span>É uma instituiçao? <a href="sign-up-ong.jsp" onclick="login()">Cadastro de 
                            Instituiçoes</a></span>
                        </div>
                    </div>
                    <% 
                        String errors = (String) request.getAttribute("erros");
                        if (errors != null && !errors.isBlank()) {   
                            String[] erroArray = errors.split(";");
                            for (String erro : erroArray) {
                        %>
                                <div class="error-box">
                                    <i class='bx bx-info-circle icon' style='color:#ffffff'  ></i>
                                    <span class="erros"><%= erro %></span>
                                </div>
                        <%
                            }
                        }
                    %>
                    <form method="POST" action="signUp">
                        <div class="two-forms">
                            <div class="input-box">
                                <label for="nome">Nome:</label>
                                <input type="text" class="input-field" name="firstname" placeholder="Digite seu nome"
                                value="${nome}" required>
                                <i class="bx bx-user"></i>
                            </div>
                            <div class="input-box">
                                <label for="sobrenome">Sobrenome:</label>
                                <input type="text" class="input-field" name="lastname" placeholder="Digite seu sobrenome" value="${sobrenome}" required>
                                <i class='bx bx-user-circle'></i>
                            </div>
                        </div>
                        <div class="two-forms">
                            <div class="input-box">
                                <label for="telefone">Telefone:</label>
                                <input type="text" class="input-field" name="phone" placeholder="Digite seu telefone" value="${telefone}" required>
                                <i class="bx bx-support"></i>
                            </div>
                            <div class="input-box">
                                <label for="cpf">CPF:</label>
                                <input type="text" class="input-field" name="cpf" placeholder="Digite seu CPF" value="${cpf}" required>
                                <i class='bx bx-user-circle'></i>
                            </div>
                        </div>
                        <div class="input-box">
                            <label for="email">Email:</label>
                            <input type="email" class="input-field" name="email" placeholder="Digite seu endereço de email" value="${email}" required>
                            <i class="bx bx-envelope"></i>
                        </div>
                        <div class="input-box">
                            <label for="date">Data de Nascimento:</label>
                            <input type="date" class="input-field" name="birthdate" placeholder="Data de nascimento"  value="${birthdate}" required>
                            <i class='bx bxs-calendar' ></i>
                        </div>
                        <div class="input-box">
                            <label for="senha">Senha:</label>
                            <input type="password" class="input-field" name="password" placeholder="Digite sua senha" required>
                            <i class='bx bx-lock-open-alt' ></i>
                        </div>
                        <div class="input-box">
                            <label for="senha">Confirme sua senha:</label>
                            <input type="password" class="input-field" name="confirm-password" placeholder="Confirme sua senha" required>
                            <i class='bx bx-lock-alt' ></i>
                        </div>
                        
  
                        <div class="two-col">
                            <div class="one">
                                <input type="checkbox" name="conditions-and-terms" id="termos">
                                <label for="termos"> Declaro que li e concordo com os <a href="politics-and-privacity.html">Termos de Uso</a> de “Doações Eleos”.</label>
                            </div>
                            <div class="two">
                                <input type="checkbox" name="notificacions" id="notificacoes">
                                <label for="notificacoes"> Desejo receber notificações por E-mail relacionadas às minhas doações, atualizações de campanhas e novidades sobre as ONGs.</label>
                            </div>
                            <div class="input-box">
                            <input type="submit" class="submit" value="Criar Conta">
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </main>
</body>
</html>