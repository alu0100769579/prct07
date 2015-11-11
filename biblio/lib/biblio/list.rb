
Node = Struct.new(:value, :next)


class   List
   
    def initialize ()
           
        @elemento = Node.new(nil)
    end
    
    def elemento
        
        @elemento
    end   
    
    def insertar_elemento(node)
        
        if @elemento != nil
            
            node.next = @elemento
            @elemento = node
        end
    end
    
    #def pop(node)
        
   #    @elemento = @elemento.next 
   # end
    
    def extraer_elemento 
        
        aux = @elemento
        @elemento = @elemento.next
        aux.value
    end    
    
end