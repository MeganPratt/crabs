function [numJelly, numCrabs] = setEnemies (level)
      if (level <= 5)
        numJelly = level;
        numCrabs = level;


      else
        numCrabs = level;
        numJelly = 0;

      endif
endfunction
