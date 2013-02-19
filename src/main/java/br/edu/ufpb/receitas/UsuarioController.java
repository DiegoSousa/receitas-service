package br.edu.ufpb.receitas;

import br.edu.ufpb.receitas.domain.Usuario;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RooWebJson(jsonObject = Usuario.class)
@Controller
@RequestMapping("/usuarios")
public class UsuarioController {
}
