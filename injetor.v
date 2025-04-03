module injetor(
  input [8:0] entrada,
  input [3:0] n,
  input erro,
  output reg [8:0] saida
);

  always @(*) 
  begin
    saida = entrada; // Mantém a entrada como padrão

    if (erro)
      saida = entrada ^ (1'b1 << n); // Inverte o bit especificado por n
  end

endmodule
