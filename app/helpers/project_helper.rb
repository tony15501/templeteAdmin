module ProjectHelper
  def image
    image_path = "/assets/255x161.jpeg"
    if Project.first
      image_path = Project.first.image
    end
    image_path
  end

  def title
    texto = "<span>Ponga su título aquí.</span>
							"
    if Project.first
      if !Project.first.title.blank?
        texto = Project.first.title
      end
    end
    texto.html_safe
  end


  def content
  	texto = "<p>Describa acerca del proyecto.</p>"
  	if Project.first
  		if !Project.first.content.blank?
  			texto = Project.first.content  			
  		end  		
  	end
  	texto.html_safe
  end

end
