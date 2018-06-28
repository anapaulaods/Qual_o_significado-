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


	end

	def button_down(butao)
		if butao ==(Gosu::KbI) && @estado == "inicio" then 
      		@estado = "computador"

      	end   	
      			#---------- Comando para avançar pra próxima pergunta.
      	if butao == (Gosu::KbReturn) && @estado == "computador" && @z == -1 then
      		@estado = "livro"
      	end

      	if butao == (Gosu::KbReturn) && @estado == "livro" && @z == -1 then
      		@estado = "carta"
      	end

      	if butao == (Gosu::KbReturn) && @estado == "carta" && @z == -1 then
      		@estado = "cinema"
      	end

      	if butao == (Gosu::KbReturn) && @estado == "cinema" && @z == -1 then
      		@estado = "jornal"
      	end

      	if butao == (Gosu::KbReturn) && @estado == "jornal" && @z == -1 then
      		@estado = "radio"
      	end

      	if butao == (Gosu::KbReturn) && @estado == "radio" && @z == -1 then
      		@estado = "marionete"
      	end

      	if butao == (Gosu::KbReturn) && @estado == "marionete" && @z == -1 then
      		@estado = "telefone"
      	end

      	if butao == (Gosu::KbReturn) && @estado == "telefone" && @z == -1 then
      		@estado = "televisao"
      	end




      			#------------ Função para troca de opões de uma mesma tela.
      	if butao == (Gosu::KbUp) && @estado == "computador" then
      		@z = -1
      		
      	end
      			 
      	if butao == (Gosu::KbDown) && @estado == "computador" then
      		@z = 0
      		
      	end

      	if butao == (Gosu::KbDown) && @estado == "livro" then
      		@z = 0
      		
      	end

      	if butao == (Gosu::KbUp) && @estado == "livro" then 
      		@z = -1

      	end

      	if butao == (Gosu::KbUp) && @estado == "carta" then
      		@z = -1
      		
      	end
      			 
      	if butao == (Gosu::KbDown) && @estado == "carta" then
      		@z = 0
      		
      	end

      	if butao == (Gosu::KbUp) && @estado == "cinema" then
      		@z = -1
      		
      	end
      			 
      	if butao == (Gosu::KbDown) && @estado == "cinema" then
      		@z = 0
      		
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

      	if butao == (Gosu::KbUp) && @estado == "marionete" then
      		@z = -1
      		
      	end
      			 
      	if butao == (Gosu::KbDown) && @estado == "marionete" then
      		@z = 0
      		
      	end

      	if butao == (Gosu::KbUp) && @estado == "telefone" then
      		@z = -1
      		
      	end
      			 
      	if butao == (Gosu::KbDown) && @estado == "telefone" then
      		@z = 0
      		
      	end

      	if butao == (Gosu::KbUp) && @estado == "televisao" then
      		@z = -1
      		
      	end
      			 
      	if butao == (Gosu::KbDown) && @estado == "televisao" then
      		@z = 0
      		
      	end

			
	end

	def update
		if @estado == "inicio" then 
      		update_inicio
    	elsif @estado == "computador" then
      		update_computador
      	elsif @estado == "livro" then
      		update_livro
      		
      	end
	end

	def draw
		if @estado == "inicio" then
			draw_incio
		elsif @estado == "computador" then
			draw_computador
		elsif @estado == "livro" then
			draw_livro
			
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

end


window = GameWindow.new
window.show
