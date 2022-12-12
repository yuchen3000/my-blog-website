FROM yuchen168/blog
ENV TZ=Asia/Shanghai
ADD run.sh /
RUN chmod +x /run.sh
CMD /run.sh
