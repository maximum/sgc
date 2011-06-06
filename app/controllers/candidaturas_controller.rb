class CandidaturasController < ApplicationController

  def candidatos_by_cnpj_cargo_qte
    all_candidatos = Candidato.all
    empresa = Empresa.find_by_cnpj(params[:cnpj])
    vagas = empresa.vagas.select { |v| v.cargo.descricao == params[:cargo] }
    
    candidatos = []
    vagas.each do |v|
      all_candidatos.each do |c|
        if (c.curso == v.curso && c.formacao == v.formacao && c.experiencia == v.experiencia && c.pretencao_salarial <= v.salario) then
          candidatos << c
        end
      end
    end  
    
    if params[:qtde] then
      render :xml => candidatos.first(params[:qtde].to_i).collect {|c| c.email }
    else
      render :xml => candidatos.collect {|c| c.email }
    end    
  end
  
  def candidatos_by_cnpj
    all_candidatos = Candidato.all
    empresa = Empresa.find_by_cnpj(params[:cnpj])
    
    candidatos = []
    empresa.vagas.each do |v|
      all_candidatos.each do |c|
        if (c.curso == v.curso && c.formacao == v.formacao && c.experiencia == v.experiencia && c.pretencao_salarial <= v.salario) then
          candidatos << c
        end
      end
    end

    render :xml => candidatos.collect {|c| c.email }    
  end

end