function level = drawStartScreen (imgName)

  clf;
  figure(1);
  imshow(imgName);

  drawMap(imgName);
  while(1)
  commandwindow();
    cmd = kbhit(1);
    if(cmd == '1' || cmd == '2' || cmd == '3' || cmd == '4' || cmd == '5' || cmd == '6' || cmd == '7' || cmd == '8' || cmd == '9')

        level = str2num(cmd);
        break;
    elseif (cmd=='Q')
        level = 'Q';
        break;
    endif
    pause(0.1)
  endwhile
endfunction
