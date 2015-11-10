class Libro
		attr_accessor :autor, :titulo, :serie, :editorial, :edicion, :publicacion, :isbn
		def initialize(autor, titulo, serie, editorial, edicion, publicacion, isbn)
			@autor = autor
			@titulo = titulo
			@serie = serie
			@editorial = editorial
			@edicion = edicion
			@publicacion = publicacion
			@isbn = isbn
		end
		def to_s
		    "#{@autor}\n#{@titulo}\n#{@serie}\n#{@editorial}; #{@edicion} (#{@publicacion})\n#{@isbn}"
		end
end