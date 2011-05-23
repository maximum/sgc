authorization do
  role :empresa do
    has_permission_on [:empresas, :vagas, :cargos], :to => [:index, :show, :new, :create, :edit, :update, :destroy]
  end
  
  role :candidato do
    has_permission_on :candidatos, :to => [:index, :show, :new, :create, :edit, :update]
    has_permission_on :vagas, :to => [:index, :show]
  end
end