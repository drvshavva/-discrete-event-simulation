%generate discrite rv for binomial distributio n=40, p=0.7 
%generate 1000 samples

%for testing haz�r k�t�phane kullan�m�
for i=1:1000
    r(i) = binornd(40,0.7);
end
hist(r,1000);
%olu�turulan her random say� i�in olas�l�k hesab�
for i=1:1000
    p(i)= nchoosek(40,r(i))*power(0.7,r(i))*power(0.3,(40-r(i)));
end
stem(r,p,'filled');
