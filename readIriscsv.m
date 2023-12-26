%The following code reads a csv file with strings to identify classes
FID = fopen('irisds.csv');
%extract data from the txt file using textscan function
textdata = textscan(FID,'%f %f %f %f %s', 200, 'Delimiter',',');
%form the data matrix
data = cell2mat(textdata(:,1:4));
target=textdata{1,5};
[m,n] = size(target);
tr=[];
%form the target matrix
for k= 1:m
a=target(k)
if strcmp(a,'"Setosa"')==1
l=-1;
elseif strcmp(a,'"Versicolor"')==1
l=0;
else
l=1;
end
tr=[tr;l];
end
clear a;
%merge both the matrix together
data=[data tr];
