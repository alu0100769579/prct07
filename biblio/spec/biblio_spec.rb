require 'spec_helper'
require 'biblio'

describe Libro do
	before :all do
		@libro1 = Libro.new(["Dave Thomas","Andy Hunt","Chad Fowler"], "The pragmatic programmers guide", "the facets of ruby", "Pragmatic Bookshelf", "4 edition", "July 7, 2013", ["isbn-13: 978-1937785499","isbn-10: 19937785491"])
		@libro2 = Libro.new(["Scott Chacon"], "Pro Git 2009th Edition", "Pro", "Apress", "2009 edition", "August 27, 2009", ["ISBN-13: 978-1430218333", "ISBN-10: 1430218339"])
        @libro3 = Libro.new(["David Flanagan", "Yukihiro Matsumoto"], "The Ruby Programming Language", "Serie", "O’Reilly Media", " 1 edition", "February 4, 2008", ["ISBN-10: 0596516177", "ISBN-13: 978-0596516178"])
        @libro4 = Libro.new(["David Chelimsky", "Dave Astels", " Bryan Helmkamp", "Dan North", "Zach Dennis", "Aslak Hellesoy"], "The RSpec Book: Behaviour Driven Development with RSpec, Cucumber, and Friends", "The Facets of Ruby", "Pragmatic Bookshelf", "1 edition", "December 25, 2010", ["ISBN-10: 1934356379", "ISBN-13: 978-1934356371",])
        @libro5 = Libro.new(["Richard E. Silverman"], "Git Pocket Guide", "Serie", "O’Reilly Media", "1 edition",  "August 2, 2013", ["ISBN-10: 1449325866", "ISBN-13: 978-1449325862"])    
        
        @node1 = Node.new(@libro1)
        @node2 = Node.new(@libro2)
        @node3 = Node.new(@libro3)
        @node4 = Node.new(@libro4)
        @node5 = Node.new(@libro5)
        
        @lista = List.new()
       
	end

	context "Node" do
		
		describe "Debe existir un Nodo de la lista con sus datos y su siguiente" do
		
			it "Almacenando valores" do
					expect(@node1.value).to eq(@libro1)
					expect(@node1.next).to eq(nil)
			end
			
		end
		
	end
	
	context "Lista" do
		
		describe "Se extrae el primer elemento de la lista" do
			it "Se extrae correctamente" do
				@lista.insertar_elemento(@node1)
				@lista.insertar_elemento(@node2)
				@lista.extraer_elemento
				expect(@lista.elemento).to eq(@node1)
			end
		end
		
		describe "Se puede insertar un elemento" do
			it "Se inserta correctamente" do
				@lista.insertar_elemento(@node3)
				expect(@lista.elemento).to eq(@node3)
			end
		end
		
		describe "Se pueden insertar varios elementos" do
			it "Se insertaron correctamente" do
				@lista.insertar_elemento(@node3)
				expect(@lista.elemento).to eq(@node3)
				@lista.insertar_elemento(@node4)
				expect(@lista.elemento).to eq(@node4)
				@lista.insertar_elemento(@node5)
				expect(@lista.elemento).to eq(@node5)
				#@lista.extraer_elemento
				
				#@lista.extraer_elemento
				
			end
		end
		
		describe "Debe existir una lista con su cabeza" do
			it "Existe" do
				@lista.insertar_elemento(@node1)
				expect(@lista.elemento).to eq(@node1)
			end
		end
	end



	context "Libro" do
		
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
				expect(@libro1.isbn).to eq(["isbn-13: 978-1937785499","isbn-10: 19937785491"])
			end
		end
	  
	  #describe "Debe existir una referencia formateada" do
	    #it "Referencia formateada" do
	      #expect(@libro1.to_s).to eq("Dave Thomas, Andy Hunt, Chad Fowler\nThe pragmatic programmers guide\n(the facets of ruby)\nPragmatic Bookshelf; 4 edition (July 7, 2013)\nisbn-13, isbn-10")
	    #end
	  #end
	  
	end

end