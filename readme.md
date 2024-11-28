# Comparativo entre Algoritmos de Hash: SHA1, MD5 e Argon2

Quando comparamos os algoritmos de hash SHA1, MD5 e Argon2, em termos de segurança, encontramos diferenças significativas:

## 1. SHA1
Embora o SHA1 tenha sido amplamente utilizado por muitos anos, ele já é considerado obsoleto e vulnerável a ataques de colisão, onde duas entradas diferentes podem gerar o mesmo hash. Em 2017, um ataque conhecido como "SHAttered" demonstrou a quebra prática do SHA1, tornando-o inadequado para aplicações de segurança, como assinaturas digitais e certificados.

**Vantagens**:
- Foi útil por muitos anos, especialmente para verificar a integridade de arquivos.

**Desvantagens**:
- Vulnerável a ataques de colisão.
- Já foi formalmente descontinuado devido às falhas de segurança.

## 2. MD5
Similar ao SHA1, o MD5 também apresenta sérias falhas de segurança, principalmente por ser suscetível a ataques de colisão. Ele é rápido e exige poucos recursos computacionais, o que o torna vulnerável a ataques de força bruta. Embora tenha sido muito utilizado para verificar a integridade de arquivos, não é recomendado para funções de segurança, como armazenamento de senhas ou verificações de autenticidade em ambientes críticos.

**Vantagens**:
- Muito rápido na geração do hash.

**Desvantagens**:
- Vulnerável a colisões&#8203;:contentReference[oaicite:2]{index=2}de&#8203;:contentReference[oaicite:3]{index=3}a.
- Não recomendado para armazenamento de senhas ou outras aplicações críticas.

## 3. Argon2
Este é um algoritmo moderno, vencedor da Competição de Hashing de Senhas de 2015, projetado especificamente para hashing de senhas. Ao contrário de SHA1 e MD5, o Argon2 é projetado para ser mais lento e intensivo em memória, o que dificulta ataques de força bruta. Ele oferece duas versões: Argon2i, otimizado para maior segurança contra ataques de canal lateral, e Argon2d, voltado para aplicações como criptomoedas. Sua adaptabilidade a diferentes configurações de memória, tempo e paralelismo torna-o altam...

**Vantagens**:
- Resistente a ataques de força bruta devid&#8203;:contentReference[oaicite:4]{index=4}to consumo de memória e tempo.
- Flexível e adaptável, ideal para armazenar senhas com alta segurança.

**Desvantagens**:
- Pode ser mais lento do que outros algoritmos, dependendo da configuração escolhida.

## Funcionamento Interno dos Algoritmos de Hash

### 1. **SHA1 (Secure Hash Algorithm 1)**
O **SHA1** é um algoritmo de hash criptográfico projetado para produzir um valor de hash de 160 bits (20 bytes) a partir de uma entrada de comprimento variável. Seu funcionamento interno pode ser descrito em três etapas principais:

1. **Pré-processamento**: A entrada é convertida em um bloco de dados com um comprimento múltiplo de 512 bits. Para isso, a mensagem é preenchida com bits adicionais para garantir que o comprimento final da mensagem seja 64 bits a menos que um múltiplo de 512. O comprimento original da mensagem é adicionado nos últimos 64 bits do bloco.

2. **Processamento em Blocos**: A mensagem é dividida em blocos de 512 bits. Para cada bloco, a função SHA1 usa uma função iterativa baseada em uma série de operações matemáticas (XOR, AND, OR, e rotações), manipulando as palavras de dados em cada bloco. Em cada rodada, 80 operações são feitas, divididas em 4 estágios.

3. **Digest Final**: O resultado final é uma sequência de 160 bits (20 bytes), chamada de digest ou hash.

**Vulnerabilidade**: O SHA1 é vulnerável a ataques de colisão, onde duas entradas diferentes geram o mesmo valor de hash, devido ao seu tamanho de hash pequeno (160 bits).

---

### 2. **MD5 (Message Digest Algorithm 5)**
O **MD5** gera um valor de hash de 128 bits (16 bytes) e, embora mais rápido que o SHA1, também é suscetível a várias falhas de segurança. Seu funcionamento é baseado em um processo similar ao SHA1:

1. **Pré-processamento**: Semelhante ao SHA1, a entrada é preenchida até que seu comprimento seja um múltiplo de 512 bits, com o comprimento original sendo inserido nos últimos 64 bits.

2. **Processamento em Blocos**: A entrada é dividida em blocos de 512 bits, e um conjunto de operações matemáticas é aplicado em cada bloco. O MD5 usa 64 rodadas de operações que envolvem adição modular, XOR e rotação de bits.

3. **Digest Final**: O hash final de 128 bits é produzido a partir do resultado da última rodada do processamento dos blocos.

**Vulnerabilidade**: O MD5 é suscetível a ataques de colisão, onde dois dados diferentes podem produzir o mesmo valor de hash. Além disso, sua velocidade torna-o vulnerável a ataques de força bruta.

---

### 3. **Argon2**
O **Argon2** é um algoritmo de hash moderno projetado para ser seguro contra ataques de força bruta, em que é necessário usar grandes quantidades de memória e tempo computacional. Seu funcionamento interno é bem diferente dos tradicionais SHA1 e MD5:

1. **Pré-processamento**: O Argon2 recebe como entradas a senha, o salt (valor aleatório) e os parâmetros de tempo, memória e paralelismo. Estes parâmetros definem a dificuldade do hash.

2. **Processamento em Blocos**: O Argon2 usa um algoritmo baseado em uma rede de dados que são processados por várias rodadas. A principal diferença é que o Argon2 permite configurar o uso de memória para aumentar a resistência a ataques de força bruta, além de ser configurável para usar diferentes quantidades de paralelismo, aumentando a segurança.

3. **Digest Final**: Após o processamento, o Argon2 gera o hash final, que depende diretamente da quantidade de memória e tempo configurados, tornando-o mais seguro contra ataques que tentam computar rapidamente hashes em grande escala.

**Vantagem**: Sua resistência a ataques de força bruta vem da necessidade de recursos computacionais elevados e memória, o que dificulta ataques de grande escala, como os realizados por botnets.

---

## Conclusão
Em resumo, **SHA1 e MD5** são algoritmos antigos e vulneráveis, enquanto **Argon2** é uma escolha muito mais segura, especialmente para aplicações que envolvem o armazenamento de senhas. Para garantir a segurança dos dados, é altamente recomendável optar por Argon2 ou outros algoritmos modernos como o SHA-256, ao invés de MD5 ou SHA1.
