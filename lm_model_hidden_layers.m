[x,t] = iris_dataset;
trainFcn = 'trainlm';
perfMat = []
for i = 1:5
    perfMat = []
    hiddenLayerSize = [i*10];
    for j = 1:10
     net = fitnet(hiddenLayerSize,trainFcn);
     net.trainParam.epochs = 1000;
     net = train(net,x,t);
%    view(net)
     y = net(x);
     perfMat = [perfMat, perform(net,y,t)]
    end
    perfMat
end