package cursojava.classes;


public class TestandoClassesFilhas {

    public static void main(String[] args) {
        Aluno aluno = new Aluno();
        aluno.setNomeEscola("drfgfgdgdafgdrf");
       aluno.setIdade(22);
       aluno.setNome("Alex");
        
        Diretor diretor = new Diretor();
        diretor.setRegistroGeral("6515415444");
        diretor.setIdade(50);
        diretor.setNome("egidio");
        
        Secretario secretario = new Secretario();
        secretario.setExperiencia("Administração");
        secretario.setNumeroCpf("54546546");
        secretario.setIdade(18);
        secretario.setNome("Joao");
        
        
        System.out.println(aluno);
        System.out.println(diretor);
        System.out.println(secretario);
        
        
        System.out.println(aluno.pessoaMaiorIdade());
        System.out.println(diretor.pessoaMaiorIdade());;
        System.out.println(secretario.pessoaMaiorIdade());
        
        
        System.out.println("SALARIO ALUNO É : " + aluno.salario());
        System.out.println("SALARIO DIRETOR É : " + diretor.salario());
        System.out.println("SALARIO SECRETARIO É : " + secretario.salario());
    
        teste(aluno);
        teste(diretor);
        teste(secretario);
       
    }
    
    public static void teste(Pessoa pessoa){
        System.out.println("Essa pessoa é demais  = "+ pessoa.getNome()+" e o salario é "+ pessoa.salario());
    }
    
}
