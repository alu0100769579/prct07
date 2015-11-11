
class   List
    
   Node = Struct.new(:value, :next)
   
   def initialize (node)
           
        @elemento = Node.new(node)
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
    
    def elemento
        @elemento
    end    
    
    
end