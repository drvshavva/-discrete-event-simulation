pbasa=0.5;
ntrial=50;
for i=1:1000
    Ur=rand(ntrial,1);
    bio(i)=sum(Ur<pbasa);
end
histogram(bio);
%olu�turulan her random say� i�in olas�l�k hesab�
for i=1:1000
    p_bio(i)= nchoosek(50,bio(i))*power(0.5,bio(i))*power(0.5,(50-bio(i)));
end
stem(bio,p_bio,'filled');
