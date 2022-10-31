Perfil de um aplicativo com nsys:

A primeira célula de execução de código compilar (e executar) o programa de adição de vetores.
            !nvcc -o single-thread-vector-add 01-vector-add/01-vector-add.cu -run
A segunda célula de execução de código criará o perfil do executável que acabou de ser compilado usando o perfil nsys.
            !nsys profile --stats=true ./single-thread-vector-add
      
