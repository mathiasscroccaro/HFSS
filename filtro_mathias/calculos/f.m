%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%
%   Programa para resolver sistema de equaçoes para calculo de filtro em fita
%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



function y = funcao(x)
  
  Er = 4.6;

  z0 = 124.5979;
  d = (120*pi^2)./(z0*sqrt(Er)); 
  WH_se = (2*(d-1)/pi)-(2/pi)*log(2*d-1)+(Er-1)*(log(d-1) + 0.293 - 0.517/Er)/(pi*Er);

  z0 = 96.7194;
  d = (120*pi^2)./(z0*sqrt(Er));
  WH_so = (2*(d-1)/pi)-(2/pi)*log(2*d-1)+(Er-1)*(log(d-1) + 0.293 - 0.517/Er)/(pi*Er);

  y = zeros(2,1);
  
  WH = x(1);
  SH = x(2);
  
  h= cosh( pi*WH + 0.5*pi*SH );
  g = cosh( 0.5*SH*pi );
  
  y(1) = - WH_se + (2/pi)*acosh( (2*h-g+1)/(g+1) );
  y(2) = - WH_so + (2/pi)*acosh( (2*h - g - 1)/(g-1) ) + (4)*acosh(1+2*WH/SH)/(pi*(1+Er/2)) ;
  
  y = [1,2];
  
endfunction

