authorization do
  role :empresa do
    has_permission_on [:vagas, :cargos], :to => [:index, :show, :new, :create, :edit, :update, :destroy]
    has_permission_on :candidatos, :to => [:index, :show]


    has_permission_on :empresas, :to => [:show, :edit, :update] do
        if_attribute :user => is { user }
    end

      has_permission_on [:empresas], :to => [:new, :create, :index]    
    
  end
  
  role :candidato do
#    has_permission_on :candidatos, :to => [:index, :show, :new, :create, :edit, :update, :destroy]
    has_permission_on :candidatos, :to => [:show, :edit, :update] do
        if_attribute :user => is { user }    
    end
    
    has_permission_on :vagas, :to => [:index, :show]
  end
  
  role :guest do
    has_permission_on :candidatos, :to => [:new, :create]
    has_permission_on :empresas, :to => [:new, :create]
  end
end