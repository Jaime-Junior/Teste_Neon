#language: pt

Funcionalidade: Cadastro_Inválido
    Para que o usuário possa se cadastrar no sistema
    É necessário que entre com todos os dados pedidos
    Porém um dado sempre falta
    Assim nenhum cadastro é feito

Esquema do Cenario: Cadastro sem sucesso
    Quando eu faço cadastro com <nome> e <cpf> e <email> e <celular> e <nascimento>
    E devo ver a mensagem de alerta <mensagem>

    Exemplos:
      | nome       | cpf            | email               | celular       | nascimento | mensagem                                |
      | ""         | "987654321-00" | "jasjr15@gmail.com" | "11987654321" | "07021988" | "Ops! Precisamos do seu nome completo"  |
      | "Jaime Jr" | ""             | "jasjr15@gmail.com" | "11987654321" | "07021988" | "Ops! CPF inválido. Tente de novo."     |
      | "Jaime Jr" | "987654321-00" | ""                  | "11987654321" | "07021988" | "Ops! E-mail inválido. Tente de novo."  |
      | "Jaime Jr" | "987654321-00" | "jasjr15@gmail.com" | ""            | "07021988" | "Ops! Celular inválido. Tente de novo." |
      | "Jaime Jr" | "987654321-00" | "jasjr15@gmail.com" | "11987654321" | ""         | "Ops! Data inválida. Tente de novo."    |