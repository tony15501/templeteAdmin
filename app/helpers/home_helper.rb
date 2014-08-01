module HomeHelper

  def logo
    logo_path = "/assets/logo.png"
    logo_path = Home.first.logo if Home.first
    logo_path
  end

  def slider
    slider_path ="/assets/1.png"
    slider_path = Home.first.slider if Home.first
    slider_path
  end

  def promocional
    promo =  "<span>Ponga su título aquí.</span>
							<p>Describa acerca de la empresa .</p> "
    if Home.first
      if !Home.first.promocional.blank?
        promo = Home.first.promocional
      end
    end
    promo.html_safe
  end

  def servicio(service)
    servicio =  "<h3>Ponga su título aquí de servicio </h3> <p>Escriba acerca del servicio..</p> "
    if Home.first
      case service
      when 1
        servicio = Home.first.servicio1 if !Home.first.servicio1.blank?
      when 2
        servicio = Home.first.servicio2 if !Home.first.servicio2.blank?
      when 3
        servicio = Home.first.servicio3 if !Home.first.servicio3.blank?
      end
    end
    servicio.html_safe
  end



  def about_us (text_default, nombre )

  	texto = text_default
  	


  	if Home.first

  		case nombre

  		when "about"
  			texto = Home.first.about if !Home.first.about.blank?
  		
  		when "direccion"
  			texto = Home.first.direccion if !Home.first.direccion.blank?

  		when  "fax"
  			texto = Home.first.fax if !Home.first.fax.blank?

  		when "telefono"
  			texto= Home.first.telefono if !Home.first.telefono.blank?

  		when "email"
  			texto = Home.first.email if !Home.first.email.blank?
  		end
  	end
  	texto.to_s.html_safe
  	
  end



  # def about
  # 	about_us = " <p>Escribe acerca de la empresa</P> "
  # 	if Home.first
  # 		if !Home.first.about.blank?
  # 			about_us = Home.first.about
  # 		end
  # 	end
  # 	about_us.html_safe
  # end



  # def address
  # 	direccion = "<p>Escribe la direccion de la empresa.</P>"
  # 	if Home.first
  # 		if !Home.first.direccion.blank?
  # 			direccion = Home.first.direccion
  # 		end
  # 	end
  # 	direccion.html_safe
  # end

  # def phone
  # 	telefono = "<p> Escribe elnúmero de telefono de la empresa</p> <p> 777-777-777</p>"
  # 	if Home.first
  # 		if !Home.first.telefono.blank?
  # 			telefono = Home.first.telefono
  # 		end
  # 	end
  # 	telefono.html_safe
  # end


  # def fax
  # 	fax = "<p> Escribe el número de fax de la empresa</p> <p> 555-5555-555</p>"
  # 	if Home.first
  # 		if !Home.first.fax.blank?
  # 			fax = Home.first.fax
  # 		end
  # 	end
  # 	fax.html_safe
  # end

  # def email
  # 	 correo = "<p> Escribe el email de la empresa</p> <p> empresa@yahoo.com</p>"
  # 	if Home.first
  # 		if !Home.first.email.blank?
  # 			correo = Home.first.email
  # 		end
  # 	end
  # 	correo.html_safe
  # end

end
