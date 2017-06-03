function lab_ej5()
  S = load("datos/datos_aeroCBA.dat");
  year = S(:, 1)';
  temp = S(:, 2)';

  x = []; # Años con temp conocida
  y = []; # Temperatura conocida
  z = []; # Temperatura interpolados
  w = []; # Años interpolados

  for i = 1 : length(year)
    if isnan(temp(i)) == 0
        y = [y temp(i)];
        x = [x year(i)];
    else
        z = [z year(i)];
    endif
  endfor

  w = interp1(x,y,z, 'spline', 'extrap');
  resultado = [z' w'];

  figure(1);
  newplot(1);

  hold on;

  plot(x, y, 'r.', 'markersize', 12);
  plot(z, w, 'bp', 'markersize', 14);
  w = interp1(x, y, [1957:1:2016], 'spline', 'extrap');
  plot([1957:2016], w, 'g-', 'linewidth', 2, [1957:2016], 2, 'g*', 'markersize', 12);
  h = legend('datos', 'interp NaN', 'Interp todos');

  set(h, 'fontsize', 12);

  hold off;
endfunction