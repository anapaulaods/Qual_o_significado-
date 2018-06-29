require 'gosu'

class GameWindow < Gosu::Window

	def initialize
		super 800, 600
		self.caption = "Qual o Significado?"
		@estado = "inicio"
		@z = -1
		
		@background_image = Gosu::Image.new("Imagens/Inicial.png", :tileable => true)
		@computador_certo = Gosu::Image.new("Imagens/Opções/Computador_certo.png")
		@computador_errado = Gosu::Image.new("Imagens/Opções/computador_errado.png")
		@livro_certo = Gosu::Image.new("Imagens/Opções/Livro_certo.png")
		@livro_errado = Gosu::Image.new("Imagens/Opções/Livro_errado.png")
		@carta_certo = Gosu::Image.new("Imagens/Opções/Carta_certo.png")
		@carta_errado = Gosu::Image.new("Imagens/Opções/Carta_errado.png")
		@marionete_certo = Gosu::Image.new("Imagens/Opções/Marionete_certo.png")
		@marionete_errado = Gosu::Image.new("Imagens/Opções/Marionete_errado.png")
		@jornal_certo = Gosu::Image.new("Imagens/Opções/Jornal_certo.png")
		@jornal_errado = Gosu::Image.new("Imagens/Opções/Jornal_errado.png")
		@radio_certo = Gosu::Image.new("Imagens/Opções/Radio_certo.png")
		@radio_errado = Gosu::Image.new("Imagens/Opções/Radio_errado.png")
		@cinema_certo = Gosu::Image.new("Imagens/Opções/Cinema_certo.png")
		@cinema_errado = Gosu::Image.new("Imagens/Opções/Cinema_errado.png")
		@televisao_certo = Gosu::Image.new("Imagens/Opções/Televisao_certo.png")
		@televisao_errado = Gosu::Image.new("Imagens/Opções/Televisao_errado.png")
		@telefone_certo = Gosu::Image.new("Imagens/Opções/Telefone_certo.png")
		@telefone_errado = Gosu::Image.new("Imagens/Opções/Telefone_errado.png")
		@fim = Gosu::Image.new("Imagens/Opções/fim.png")
		#@errou = Gosu::Image.new("Imagens/Opções/Errou.png")
	end

	def button_down(butao)

		#---------- Comando para avançar pra próxima pergunta.
		if butao ==(Gosu::KbI) && @estado == "inicio" then 
      		@estado = "computador"
      	end   	

      	#se @z == -1 a resposta correta está em cima 
      	#se @z == 0  a resposta correta está em baixo
      	
      	if butao == (Gosu::KbReturn) && @estado == "computador" && @z == -1 then
      		@estado = "livro"
      	end
      	
      	if butao == (Gosu::KbReturn) && @estado == "livro" && @z == 0 then
      		@estado = "carta"	
      	end
      	
      	if butao == (Gosu::KbReturn) && @estado == "carta" && @z == -1 then
      		@estado = "marionete"
      
      	end
      	
      	if butao == (Gosu::KbReturn) && @estado == "marionete" && @z == 0 then
      		@estado = "jornal"
      			
      	end
      	
      	if butao == (Gosu::KbReturn) && @estado == "jornal" && @z == -1 then
      		@estado = "radio"
      		
      	end
      	
      	if butao == (Gosu::KbReturn) && @estado == "radio" && @z == 0 then
      		@estado = "cinema"
      		
      	end
      	
      	if butao == (Gosu::KbReturn) && @estado == "cinema" && @z == -1 then
      		@estado = "televisao"
      		
      	end
      	if butao == (Gosu::KbReturn) && @estado == "televisao" && @z == 0 then
      		@estado = "telefone"
      		
      	end
      	
      	if butao == (Gosu::KbReturn) && @estado == "telefone" && @z == -1 then
      		@estado = "fim"
      	
      	end
      	
      	if butao ==(Gosu::KbI) && @estado == "fim" then 
      		initialize
      	end 


      	#------------ Função para troca de opões de uma mesma tela.
      	if butao == (Gosu::KbUp) && @estado == "computador" then
      		@z = -1	
      	end
      	if butao == (Gosu::KbDown) && @estado == "computador" then
      		@z = 0
      	end
      	
      	
      	if butao == (Gosu::KbUp) && @estado == "livro" then
      		@z = -1	
      	end
      	if butao == (Gosu::KbDown) && @estado == "livro" then 
      		@z = 0
      	end
      	

      	if butao == (Gosu::KbUp) && @estado == "carta" then
      		@z = -1
      	end
      	if butao == (Gosu::KbDown) && @estado == "carta" then
      		@z = 0
      	end

      	
      	if butao ==(Gosu::KbUp) && @estado == "marionete" then
			@z = 0
		end
		if butao ==(Gosu::KbDown) && @estado == "marionete" then
			@z = -1
		end
      	

      	if butao == (Gosu::KbUp) && @estado == "jornal" then
      		@z = -1	
      	end   			 
      	if butao == (Gosu::KbDown) && @estado == "jornal" then
      		@z = 0
		end

		if butao == (Gosu::KbUp) && @estado == "radio" then
			@z = -1
		end
		if butao == (Gosu::KbDown) && @estado == "radio" then
			@z = 0
		end

		if butao == (Gosu::KbUp) && @estado == "cinema" then
      		@z = 0    		
      	end      			 
      	if butao == (Gosu::KbDown) && @estado == "cinema" then
      		@z = -1	
      	end

      	if butao ==(Gosu::KbUp) && @estado == "televisao" then
      		@z = 0
      		
      	end
      	if butao ==(Gosu::KbDown) && @estado == "televisao" then
      		@z = -1
      		
      	end
      	if butao ==(Gosu::KbUp) && @estado == "telefone" then
      		@z = 0
      	end 
      	if butao ==(Gosu::KbDown) && @estado == "telefone" then
      		@z = -1
      	 	
      	end 

		
	end

	def update
		if @estado == "inicio" then 
      		update_inicio
    	elsif @estado == "computador" then
      		update_computador
      	elsif @estado == "livro" then
      		update_livro
      	elsif @estado == "carta" then
      		update_carta
      	elsif @estado == "marionete" then
      		update_marionete	
      	elsif @estado == "jornal" then
      		update_jornal
      	elsif @estado == "radio" then
      		update_radio
      	elsif @estado == "cinema" then
      		update_cinema
      	elsif @estado == "televisao" then
      		update_televisao
      	elsif @estado == "telefone" then
      		update_telefone	
      	elsif @estado == "fim" then
      		update_fim
      	end 
      	if @estado == "errou" then
      		update_errou																																					
      	end
	end

	def draw
		if @estado == "inicio" then
			draw_incio()
		elsif @estado == "computador" then
			draw_computador()
		elsif @estado == "livro" then
			draw_livro()
		elsif @estado == "carta" then
			draw_carta()
		elsif @estado == "marionete" then
			draw_marionete()
		elsif @estado == "jornal" then
			draw_jornal()
		elsif @estado == "radio" then
			draw_radio()
		elsif @estado == "cinema" then 
			draw_cinema()
		elsif @estado == "televisao" then
			draw_televisao()
		elsif @estado == "telefone" then
			draw_telefone()	
		elsif @estado == "fim" then
			draw_fim() 
		elsif @estado == "errou" then
			draw_errou()
		end
	end


	def update_inicio

	end
	def draw_incio
		@background_image.draw(0, 0, 0)
	end


	def update_computador
		
	end
	def draw_computador
		@computador_certo.draw(0, 0, 0)
		@computador_errado.draw(0, 0, @z) #@z será a tela de "baixo"
	end

	def update_livro
		
	end
	def draw_livro
		@livro_errado.draw(0, 0, 0)
		@livro_certo.draw(0, 0, @z) #@z será a tela de "baixo"
	end

	def update_carta
		
	end
	def draw_carta
		@carta_certo.draw(0, 0, 0)
		@carta_errado.draw(0, 0, @z) #@z será a tela de "baixo"
	end

	def update_marionete
		
	end	
	def draw_marionete
		@marionete_errado.draw(0, 0, 0) #@z será a tela de baixo
		@marionete_certo.draw(0, 0, @z)
	end
	
	def update_jornal
		
	end
	def draw_jornal
		@jornal_certo.draw(0, 0, 0)
		@jornal_errado.draw(0, 0, @z) #@z será a tela de baixo
		
	end

	def update_radio
		
	end
	def draw_radio
		@radio_errado.draw(0, 0, 0)
		@radio_certo.draw(0, 0, @z) #@z será a tela de baixo
	end

	
	def update_cinema
		
	end
	def draw_cinema
		@cinema_certo.draw(0, 0, 0)
		@cinema_errado.draw(0, 0, @z) #@z será a tela de "baixo"

	end

	def update_televisao
		
	end
	def draw_televisao
		@televisao_errado.draw(0, 0, 0)
		@televisao_certo.draw(0, 0, @z) #@z será a tela de "baixo"
		
	end

	def update_telefone
		
	end
	def draw_telefone
		@telefone_certo.draw(0, 0, 0)
		@telefone_errado.draw(0, 0, @z) #@z será a tela de "baixo"
	end

	def update_fim
		
	end
	def draw_fim
		@fim.draw(0, 0, 0)
	end
end


window = GameWindow.new
window.show