FROM mainframed767/mvsce
WORKDIR /MVSCE/DASD
COPY dasd/mvs000.3350 dasd/mvsres.3350 dasd/page00.3350 dasd/pub000.3380 dasd/pub001.3390 dasd/smp000.3350 dasd/spool1.3350 dasd/syscpk.3350 dasd/work00.3350 dasd/work01.3350 ./
WORKDIR /MVSCE/conf
RUN sed -i s/0400.8/0400.25/g local.cnf
WORKDIR /
VOLUME ["/config","/dasd","/printers","/punchcards","/logs", "/certs"]
EXPOSE 21 23 3270 3505 3506 8888
ENTRYPOINT ["./mvs.sh"]
