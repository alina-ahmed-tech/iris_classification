t = readtable('fisheriris.csv','format','%f%f%f%f%C');
d = fitcdiscr(t,'Species')
predict(d,t)
confusionmat(t.Species,predict(d,t))