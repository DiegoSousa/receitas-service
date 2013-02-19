package br.edu.ufpb.receitas;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import br.edu.ufpb.receitas.domain.Ingrediente;
import br.edu.ufpb.receitas.service.IngredienteService;

@RooWebJson(jsonObject = Ingrediente.class)
@Controller
@RequestMapping("/ingredientes")
public class IngredienteController {
	// http://localhost:8080/receitas/ingredientes/search?q=feijao,arroz
	@Autowired
	IngredienteService ingredienteServiceAux;

	@RequestMapping(value = "search", headers = "Accept=application/json")
	@ResponseBody
	public ResponseEntity<String> getReceitas() {
		HttpHeaders headers = new HttpHeaders();
		headers.add("Content-Type", "application/json; charset=utf-8");
		
		//List<Ingrediente> result = ingredienteService.findAllIngredientes();
		String result2 = headers.get("q").toString();
		return new ResponseEntity<String>(result2,
				headers, HttpStatus.OK);
	}

}
