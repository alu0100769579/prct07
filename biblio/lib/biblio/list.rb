
Node = Struct.new(:value, :next)


class   List
   
    def initialize ()
           
        @elemento = Node.new(nil)
    end
    
    def elemento
        
        @elemento
    end   
    
    def push(node)
        
        if @elemento != nil
            
            node.next = @elemento
            @elemento = node
        end
    end
    
    def pop(node)
        
       @elemento = @elemento.next 
    end
    
    def extraer 
        
        aux = @elemento
        @elemento = @elemento.next
        aux.value
    end    
    
end