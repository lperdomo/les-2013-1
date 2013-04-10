package br.com.les20131.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.servlet.http.HttpSession;

import br.com.les20131.model.Usuario;
import br.com.les20131.model.bean.UsuarioBean;
import br.com.les20131.util.InvalidPageException;
import br.com.les20131.util.UserAuthenticationException;


/**
 * Servlet implementation class BaseController
 */
@WebServlet("/BaseController")
public abstract class BaseController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BaseController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
        	if (request.getQueryString() == null) {
        		this.doPost(request, response);
        	} else {
        		throw new InvalidPageException();
        	}
        } catch (Exception excecao) {
			request.setAttribute("excecao", excecao);
			RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/ErroController");
			dispatcher.forward(request, response);
        }
	}
	
    /**
     * Verifica a sess�o do usu�rio
     * @access protected
     * @param HttpServletRequest request
     * @return void
     * @throws Exception
     */
    protected void verificarSessao(HttpServletRequest request) throws Exception {
        HttpSession sessao = request.getSession(false);
        if (sessao == null) {
            /**
             * Se n�o h� sess�o, retorna ao login
             */
            throw new UserAuthenticationException();
        } else if (sessao.getAttribute("usuario") == null) {
            /**
             * Valida usuario, jogando exce��o caso inv�lido
             */
            throw new UserAuthenticationException();
        } else {
        	UsuarioBean usuarioBean = new UsuarioBean();
        	usuarioBean.setUsuario((Usuario)sessao.getAttribute("usuario"));
        	request.setAttribute("usuarioBean", usuarioBean);
        }
    }	

}