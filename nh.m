function [wf, tm, ETH, ETH_Teszt ]= nh(TH,d_TH, TH_Teszt,d_TH_Teszt, w0, u, t, akt, akt_par)
a=akt_par(1);
w=w0{1};

	for i=1:t
	ETH(i)=0;
    [mt, nt] = size(TH_Teszt)
	for j=1:mt	
	x=TH(j,:)'; 
	s=w'*x;		
	y=sa(s,a);		
	h=d_TH(j,:)'-y;	
	w=w+u*x*(h.*dsa(s,a))';		
	ETH(i)=ETH(i)+h'*h;	
    tm=i;
    end    
    [mteszt, nteszt] = size(TH_Teszt)
    ETH_Teszt(i)=0;
	for j=1:mteszt
        x=TH_Teszt(j,:)';
        s=w'*x;		
        y=sa(s,a);	
        h=d_TH_Teszt(j,:)'-y;
        ETH_Teszt(i)=ETH_Teszt(i)+h'*h;
    end    
	end

  wf{1} = w;    
end