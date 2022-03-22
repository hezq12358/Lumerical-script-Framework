function neffT = ModeSmooth(widthL,neffM)
%% 为lumerical擦屁股，解决曲线与模式不匹配的问题
% 	A:neffM : widthL , modeL 
%	C:
%	G:
neffT = zeros(size(neffM));
neffT(end-1:end,:) = neffM(end-1:end,:)
for k = size(neffM,1)-1:2
	Sk = inc(k);
	Dk = dec(k);
	for kk = 1:size(neffM,2)
		Skk = inc(kk);
		Dkk = dec(kk);
		if kk == 1
			index = predict([ 	widthL(k), neffT(k,kk);
								widthL(Sk),neffT(Sk,kk);
								widthL(Dk),neffM(Dk,kk);
								widthL(Dk),neffM(Dk,Skk)
							  ]);
		elseif kk == size(neffM,2)
			index = predict([ 	widthL(k), neffT(k,kk);
								widthL(Sk),neffT(Sk,kk);
								widthL(Dk),neffM(Dk,kk);
								widthL(Dk),neffM(Dk,Dkk)
							]);
		else
			index = predict([ 	widthL(k), neffT(k,kk);
								widthL(Sk),neffT(Sk,kk);
								widthL(Dk),neffM(Dk,kk);
								widthL(Dk),neffM(Dk,Dkk);
								widthL(Dk),neffM(Dk,Skk)
							]);		
		end
end
return

function 


return
