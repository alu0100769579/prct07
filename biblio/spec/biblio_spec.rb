require 'spec_helper'
require 'biblio'

describe Libro do
	before :each do
		@libro1 = Libro.new(["Dave Thomas","Andy Hunt","Chad Fowler"], "The pragmatic programmers guide", "the facets of ruby", "Pragmatic Bookshelf", "4 edition", "July 7, 2013", ["isbn-13","isbn-10"])
		
	end

	describe "Debe existir uno o más autores" do
		it "Se almacenan correctamente los autores y hay un método para obtenerlos" do
			expect(@libro1.autor).to eq(["Dave Thomas","Andy Hunt","Chad Fowler"])
			
		end
	end
	
	describe "Debe existir un título y hay un método para obtenerlo" do
		it "Se almacena correctamente el titulo" do
			expect(@libro1.titulo).to eq("The pragmatic programmers guide")
			
		end
	end

	describe "Debe existir o no una serie y hay un método para obtenerla" do
		it "En el libro 1 no debe haber serie" do
			expect(@libro1.serie).to eq("the facets of ruby")
		end
	
	end

	describe "Debe existir una editorial y hay un método para obtenerla" do
		it "Se almacena correctamente la editorial" do
			expect(@libro1.editorial).to eq("Pragmatic Bookshelf")
			
		end
	end

	describe "Debe existir un numero de edicion y hay un método para obtenerlo" do
		it "Se almacenan correctamente las ediciones" do
			expect(@libro1.edicion).to eq("4 edition")
			
		end
	end 

	describe "Debe existir una fecha de publicacion y hay un método para obtenerla" do
		it "Se almacenan correctamente las fechas" do
			expect(@libro1.publicacion).to eq("July 7, 2013")
		
		end
	end

	describe "Debe existir uno o mas numeros ISBN y hay un método para obtenerlos" do
		it "En el libro 1 están el ISB-10 y el 13" do
			expect(@libro1.isbn).to eq(["isbn-13","isbn-10"])
		end
	end
  
  #describe "Debe existir una referencia formateada" do
    #it "Referencia formateada" do
      #expect(@libro1.to_s).to eq("Dave Thomas, Andy Hunt, Chad Fowler\nThe pragmatic programmers guide\n(the facets of ruby)\nPragmatic Bookshelf; 4 edition (July 7, 2013)\nisbn-13, isbn-10")
    #end
  #end

end