module GenerationsHelper

  def activate_link generation
    if generation.status == "active" 
      link_to "Desactivar", deactivate_generation_path(generation), method: :put
    else
      link_to "Activar", activate_generation_path(generation), method: :put
    end
  end
end
