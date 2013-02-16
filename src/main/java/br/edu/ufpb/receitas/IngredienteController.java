package br.edu.ufpb.receitas;

import br.edu.ufpb.receitas.domain.Ingrediente;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RooWebJson(jsonObject = Ingrediente.class)
@Controller
@RequestMapping("/ingredientes")
public class IngredienteController {
}
