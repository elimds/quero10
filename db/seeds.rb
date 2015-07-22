# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
State.create([{acronym: 'AC', name: 'Acre '}, {acronym: 'AL', name: 'Alagoas '}, {acronym: 'AP', name: 'Amapá '}, {acronym: 'AM', name: 'Amazonas '}, {acronym: 'BA', name: 'Bahia '}, {acronym: 'CE', name: 'Ceará '}, {acronym: 'DF', name: 'Distrito Federal '}, {acronym: 'ES', name: 'Espírito Santo '}, {acronym: 'GO', name: 'Goiás '}, {acronym: 'MA', name: 'Maranhão '}, {acronym: 'MT', name: 'Mato Grosso '}, {acronym: 'MS', name: 'Mato Grosso do Sul '}, {acronym: 'MG', name: 'Minas Gerais '}, {acronym: 'PA', name: 'Pará'}, {acronym: 'PB', name: 'Paraíba'}, {acronym: 'PR', name: 'Paraná '}, {acronym: 'PE', name: 'Pernambuco '}, {acronym: 'PI', name: 'Piauí '}, {acronym: 'RJ', name: 'Rio de Janeiro '}, {acronym: 'RN', name: 'Rio Grande do Norte '}, {acronym: 'RS', name: 'Rio Grande do Sul '}, {acronym: 'RO', name: 'Rondônia '}, {acronym: 'RR', name: 'Roraima '}, {acronym: 'SC', name: 'Santa Catarina '}, {acronym: 'SP', name: 'São Paulo '}, {acronym: 'SE', name: 'Sergipe '}, {acronym: 'TO', name: 'Tocantins '}])
   GreatArea.create([{code_capes:'10000003',title:'CIÊNCIAS EXATAS E DA TERRA '},])
   
    great_area=GreatArea.create( [ {code_capes:'20000006',title:'CIÊNCIAS BIOLÓGICAS'}])
    great_area=GreatArea.create( [  {code_capes:'30000009',title:'ENGENHARIAS'}])
    great_area=GreatArea.create( [ {code_capes:'40000001',title:'CIÊNCIAS DA SAÚDE'}])
    great_area=GreatArea.create( [ {code_capes:'50000004',title:'CIÊNCIAS ÁGRARIAS'}])
    great_area=GreatArea.create( [ {code_capes:'60000007',title:'CIÊNCIAS SOCIAIS APLICADAS'}])
    great_area=GreatArea.create( [ {code_capes:'70000000',title:'CIÊNCIAS HUMANAS'}])
    great_area=GreatArea.create( [ {code_capes:'80000002',title:'LINGUÍSTICA, LETRAS E ARTES'}])
    great_area=GreatArea.create( [ {code_capes:'90000005',title:'MULTIDISCIPLINAR'}])
    
