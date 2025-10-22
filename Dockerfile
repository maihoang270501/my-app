# Sử dụng image Node.js làm base image
FROM node:14

# Tạo thư mục làm việc trong container
WORKDIR /app

# Sao chép package.json và cài đặt các dependencies
COPY package.json /app
RUN npm install

# Sao chép toàn bộ mã nguồn vào container
COPY . /app

# Mở cổng mà ứng dụng sẽ chạy
EXPOSE 3000

# Chạy ứng dụng
CMD ["npm", "start"]
