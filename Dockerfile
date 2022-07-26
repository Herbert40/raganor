FROM quay.io/souravkl11/raganork:multidevice

RUN git clone https://github.com/Herbert40/raganor /skl/Raganork
WORKDIR /skl/Raganork
ENV TZ=Asia/Mizoram
RUN npm install supervisor -g
RUN yarn install --ignore-engines
CMD ["node", "index.js"]
