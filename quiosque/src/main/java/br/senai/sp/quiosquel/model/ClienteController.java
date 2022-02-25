package br.senai.sp.quiosquel.model;



import java.text.Format;
import java.time.LocalDateTime;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import br.senai.sp.quiosquel.dao.ClienteDao;

@Controller
public class ClienteController {
	

	@RequestMapping("/")
	public String view() {
		System.out.println("Passou no IndexController");
		return "index";

	}
	@RequestMapping("cadCliente")
	public String view1() {
		System.out.println("Passou no IndexController");
		return "cadcliente";

	}


	@RequestMapping("listaCliente")
	public String listar(Model model) {
		ClienteDao dao = new ClienteDao();
		model.addAttribute("clientes", dao.listar());
		return "listacliente";
	}

	@RequestMapping("excluirCliente")
	public String excluir(long idCliente) {
		ClienteDao dao = new ClienteDao();
		dao.excluir(idCliente);
		return "redirect:listaCliente";
	}

	@RequestMapping("alterarCliente")
	public String alterar(long idCliente, Model model) {
		ClienteDao dao = new ClienteDao();
		model.addAttribute("cliente", dao.buscar(idCliente));
		return "forward:cadCliente";
	}
	
	// erro 405 request post,
		@RequestMapping(value = "salvarObj", method = RequestMethod.POST)
		public String salvar(Cliente cliente) {
			System.out.println(cliente.getNome());
			System.out.println(cliente.getEndereco());
			System.out.println(cliente.getEmail());
			System.out.println(cliente.getNumero());
			System.out.println(cliente.getDataNascimento());
			System.out.println(cliente.getGenero());
			System.out.println(cliente.getIdade());
			System.out.println(cliente.getProdInt());
			
			//mandando pro banco de dados 
			ClienteDao dao = new ClienteDao();
			dao.inserir(cliente);
			
			return "redirect:cadCliente";
		}
		
		@RequestMapping("estatCliente")
		public String contagem(Model model ) {
			List<Cliente> cliente = new ClienteDao().listar();
			int ctMasculino = 0;
			int ctFeminino = 0;
			int jovem =0, adulto = 0, idoso = 0;
			int ctDia=0,ctTarde=0,ctNoite=0;
			for (Cliente c : cliente){
				if(c.getGenero().equals("masculino")) {
					ctMasculino++;
				}else {
					ctFeminino++;
				}
				if(c.getIdade()<18) {
					jovem++;
				}else if(c.getIdade()<65) {
					adulto++;
				}else {
					idoso++;
				}
				
				//dayofwee
				/*
				 int jv = c.getHoraCadastro().get(Calendar.HOUR_OF_DAY);
				 if(jv < 12) {
					ctDia++;
				}else if (jv < 18) {
					ctTarde++;
				}else {
					ctNoite++;
				}
				*/
				
				
			}
			model.addAttribute("masculino", ctMasculino);
			model.addAttribute("feminino", ctFeminino);
			model.addAttribute("jovem", jovem);
			model.addAttribute("adulto", adulto);
			model.addAttribute("idoso", idoso);
			
		
			return "estatcliente";
		}
		
			
	
	
}
