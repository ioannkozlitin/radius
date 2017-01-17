function e=TFPSahaCompare(Z, rc)
rc
fflush(1);
cmd = sprintf("../tefis/src/release/tefis saha %d %g",Z,rc);
system(cmd);
run(sprintf("table_new_%d",Z));
run(sprintf("table_saha_%d",Z));
em = abs(log10(abs(P./P_TFP)));
fprintf("\n");
%e = mean(em(:).^2).^0.5
e = max(em(:))
fflush(1);
end
