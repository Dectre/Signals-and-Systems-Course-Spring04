function[grayscale_pic] = mygrayfun(pic)
    grayscale_pic = 0.299 .* pic(:,:,1) + 0.578 .* pic(:,:,2) + 0.114 .* pic(:,:,3);
end