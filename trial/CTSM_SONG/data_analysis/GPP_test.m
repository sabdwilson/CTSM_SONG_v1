file1='/home/u22/chopinsong/CTSM_SONG/data_analysis/fort.200';
data1=dlmread(file1);
yr_S1=data1(:,1);
mon_S1=data1(:,2);
day_S1=data1(:,3);
sec_S1=data1(:,4);
gpp_S1=data1(:,5:10);
gpp_S1(:,6)=gpp_S1(:,6)*3600.0;

file3='/home/u22/chopinsong/CTSM_SONG/data_analysis/S2_case/fort.200';
data3=dlmread(file3);
yr_S2=data3(:,1);
mon_S2=data3(:,2);
day_S2=data3(:,3);
sec_S2=data3(:,4);
gpp_S2=data3(:,5:10);
gpp_S2(:,6)=gpp_S2(:,6)*3600.0;


file4='/home/u22/chopinsong/CTSM_SONG/data_analysis/S3_case/fort.200';
data4=dlmread(file4);
yr_S3=data4(:,1);
mon_S3=data4(:,2);
day_S3=data4(:,3);
sec_S3=data4(:,4);
gpp_S3=data4(:,5:10);
gpp_S3(:,6)=gpp_S3(:,6)*3600.0;

file5='/home/u22/chopinsong/CTSM_SONG/data_analysis/S4_case/fort.200';
data5=dlmread(file5);
yr_S4=data5(:,1);
mon_S4=data5(:,2);
day_S4=data5(:,3);
sec_S4=data5(:,4);
gpp_S4=data5(:,5:10);
gpp_S4(:,6)=gpp_S4(:,6)*3600.0;


file2='/home/u22/chopinsong/CTSM_SONG/data_analysis/Observation/GPP_ET_obsS1.csv';
data2=table2array(readtable(file2));
time_o1=datetime(num2str(data2(:,1)),'InputFormat','yyyyMMdd');
o1_gpp(:,1:2)=data2(:,2:3);

file6='/home/u22/chopinsong/CTSM_SONG/data_analysis/Observation/GPP_ET_obsS2.csv';
data6=table2array(readtable(file6));
time_o2=datetime(num2str(data6(:,1)),'InputFormat','yyyyMMdd');
o2_gpp(:,1:2)=data6(:,2:3);

file7='/home/u22/chopinsong/CTSM_SONG/data_analysis/Observation/GPP_ET_obsS3.csv';
data7=table2array(readtable(file7));
time_o3=datetime(num2str(data7(:,1)),'InputFormat','yyyyMMdd');
o3_gpp(:,1:2)=data7(:,2:3);

file8='/home/u22/chopinsong/CTSM_SONG/data_analysis/Observation/GPP_ET_obsS4.csv';
data8=table2array(readtable(file7));
time_o4=datetime(num2str(data8(:,1)),'InputFormat','yyyyMMdd');
o4_gpp(:,1:2)=data8(:,2:3);

k=0;
for i=1:size(data1(:,1));
  for y=2019:2021
     for m=1:12 
      if((yr_S1(i)==y) && (mon_S1(i)==m) && (mod(i,24)==0))
        k=k+1;
        daily_gpp_s1(k,1)=yr_S1(i);
        daily_gpp_s1(k,2)=mon_S1(i);
        daily_gpp_s1(k,3)=day_S1(i);
        daily_gpp_s1(k,4)=juliandate(yr_S1(i),mon_S1(i),day_S1(i));
        daily_gpp_s1(k,(5:10))=sum(gpp_S1(((i-23):i),(1:6)),1);
        time_s1(k)=datetime(yr_S1(i),mon_S1(i),day_S1(i));
      end
     end
  end
end


k=0;
for i=1:size(data3(:,1));
  for y=2019:2021
     for m=1:12 
      if((yr_S2(i)==y) && (mon_S2(i)==m) && (mod(i,24)==0))
        k=k+1;
        daily_gpp_s2(k,1)=yr_S2(i);
        daily_gpp_s2(k,2)=mon_S2(i);
        daily_gpp_s2(k,3)=day_S2(i);
        daily_gpp_s2(k,4)=juliandate(yr_S2(i),mon_S2(i),day_S2(i));
        daily_gpp_s2(k,(5:10))=sum(gpp_S2(((i-23):i),(1:6)),1);
        time_s2(k)=datetime(yr_S2(i),mon_S2(i),day_S2(i));
      end
     end
  end
end

k=0;
for i=1:size(data4(:,1));
  for y=2019:2021
     for m=1:12 
      if((yr_S3(i)==y) && (mon_S3(i)==m) && (mod(i,24)==0))
        k=k+1;
        daily_gpp_s3(k,1)=yr_S3(i);
        daily_gpp_s3(k,2)=mon_S3(i);
        daily_gpp_s3(k,3)=day_S3(i);
        daily_gpp_s3(k,4)=juliandate(yr_S3(i),mon_S3(i),day_S3(i));
        daily_gpp_s3(k,(5:10))=sum(gpp_S3(((i-23):i),(1:6)),1);
        time_s3(k)=datetime(yr_S3(i),mon_S3(i),day_S3(i));
      end
     end
  end
end

k=0;
for i=1:size(data5(:,1));
  for y=2019:2021
     for m=1:12 
      if((yr_S4(i)==y) && (mon_S4(i)==m) && (mod(i,24)==0))
        k=k+1;
        daily_gpp_s4(k,1)=yr_S4(i);
        daily_gpp_s4(k,2)=mon_S4(i);
        daily_gpp_s4(k,3)=day_S4(i);
        daily_gpp_s4(k,4)=juliandate(yr_S4(i),mon_S4(i),day_S4(i));
        daily_gpp_s4(k,(5:10))=sum(gpp_S4(((i-23):i),(1:6)),1);
        time_s4(k)=datetime(yr_S4(i),mon_S4(i),day_S4(i));
      end
     end
  end
end


%plotting the data
subplot(2,2,1)
cor=['r','b','g','c','k'];
for k=1:5
f1=plot(time_s1(1,:),daily_gpp_s1(:,(k+5)),'Color',cor(k),'LineStyle', '-','LineWidth',1.0 );
hold on;
end
x=datenum(time_o1);
%errorbar(x,o_gpp(:,1),o_gpp(:,2))
%datetick(x,'dd-mmm-yyyy');
plot(time_o1,o1_gpp(:,1),'k--')
%boundedline(datenum(time2),o_gpp(:,1),o_gpp(:,2));
%date1=datetime(2019,11,1,);
%date2=datetime(2021,1,1,00,00,00);
%date3=datetime(2020,7,15,00,00,00);
%xlim([date3 date2]);
xlim([time(1,252) time(1,350)]);
ylim([0 6]);
xticks([time(1,252) time(1,300) time(1, 350)]);
xlabel('Time');
ylabel('GPP(gC/m^2/day)');
xtickformat('yyyy-MM-dd');
%legend('Annual Winter','Annual Summer','Perennial C3','Prennial C4','Total');
legend('Modeled','Measured')
subplot(2,2,2)
cor=['r','b','g','c','k'];
for k=5:5
f1=plot(time_s2(1,:),daily_gpp_s2(:,(k+5)),'Color',cor(k),'LineStyle', '-','LineWidth',1.0 );
hold on;
end
x=datenum(time_o2);
%errorbar(x,o_gpp(:,1),o_gpp(:,2))
%datetick(x,'dd-mmm-yyyy');
plot(time_o2,o2_gpp(:,1),'r')
%boundedline(datenum(time2),o_gpp(:,1),o_gpp(:,2));
%date1=datetime(2019,11,1,);
%date2=datetime(2021,1,1,00,00,00);
%date3=datetime(2020,7,15,00,00,00);
%xlim([date3 date2]);
xlim([time(1,252) time(1,350)]);
ylim([0 6]);
xticks([time(1,252) time(1,300) time(1, 350)]);
xlabel('Time');
ylabel('GPP(gC/m^2/day)');
xtickformat('yyyy-MM-dd');
%legend('Annual Winter','Annual Summer','Perennial C3','Prennial C4','Total');

subplot(2,2,3)
cor=['r','b','g','c','k'];
for k=1:5
f1=plot(time_s3(1,:),daily_gpp_s3(:,(k+5)),'Color',cor(k),'LineStyle', '-','LineWidth',1.0 );
hold on;
end
x=datenum(time_o3);
%errorbar(x,o_gpp(:,1),o_gpp(:,2))
%datetick(x,'dd-mmm-yyyy');
plot(time_o3,o3_gpp(:,1),'r-')
%boundedline(datenum(time2),o_gpp(:,1),o_gpp(:,2));
%date1=datetime(2019,11,1,);
%date2=datetime(2021,1,1,00,00,00);
%date3=datetime(2020,7,15,00,00,00);
%xlim([date3 date2]);
xlim([time(1,252) time(1,350)]);
ylim([0 6]);
xticks([time(1,252) time(1,300) time(1, 350)]);
xlabel('Time');
ylabel('GPP(gC/m^2/day)');
xtickformat('yyyy-MM-dd');
legend('Annual Winter','Annual Summer','Perennial C3','Prennial C4','Total Modeled');

subplot(2,2,4)
cor=['r','b','g','c','k'];
for k=5:5
f1=plot(time_s4(1,:),daily_gpp_s4(:,(k+5)),'Color',cor(k),'LineStyle', '-','LineWidth',1.0 );
hold on;
end
x=datenum(time_o4);
%errorbar(x,o_gpp(:,1),o_gpp(:,2))
%datetick(x,'dd-mmm-yyyy');

plot(time_o4,o4_gpp(:,1),'g-');
hold on;

%plot(time_o4,sum(o4_gpp(:,:),2),'r-');
%%hold on;
%plot(time_o4,(o4_gpp(:,1)-o4_gpp(:,2)),'r-');
%hold on;

%boundedline(datenum(time2),o_gpp(:,1),o_gpp(:,2));
%date1=datetime(2019,11,1,);
%date2=datetime(2021,1,1,00,00,00);
%date3=datetime(2020,7,15,00,00,00);
%xlim([date3 date2]);
xlim([time(1,252) time(1,350)]);
ylim([0 6]);
xticks([time(1,252) time(1,300) time(1, 350)]);
xlabel('Time');
ylabel('GPP(gC/m^2/day)');
xtickformat('yyyy-MM-dd');
%legend('Annual Winter','Annual Summer','Perennial C3','Prennial C4','Total');