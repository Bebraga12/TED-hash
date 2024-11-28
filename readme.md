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


## Conclusão
Em resumo, **SHA1 e MD5** são algoritmos antigos e vulneráveis, enquanto **Argon2** é uma escolha muito mais segura, especialmente para aplicações que envolvem o armazenamento de senhas. Para garantir a segurança dos dados, é altamente recomendável optar por Argon2 ou outros algoritmos modernos como o SHA-256, ao invés de MD5 ou SHA1.
