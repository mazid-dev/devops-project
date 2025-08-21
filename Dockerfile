# বেস ইমেজ
FROM node:18-alpine

# ওয়ার্কিং ডিরেক্টরি সেট করুন
WORKDIR /usr/src/app

# প্যাকেজ ফাইলগুলো কপি করুন
COPY package*.json ./

# নোড প্যাকেজগুলো ইনস্টল করুন
RUN npm install

# অ্যাপ্লিকেশনের সোর্স কোড কপি করুন
COPY . .

# পোর্ট এক্সপোজ করুন
EXPOSE 3000

# অ্যাপ্লিকেশনটি রান করার কমান্ড
CMD ["node", "app.js"]