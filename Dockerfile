# استخدام صورة Nginx الرسمية
FROM nginx:alpine

# نسخ ملف HTML إلى مجلد Nginx الافتراضي
COPY index.html /usr/share/nginx/html/index.html

# نسخ ملف تكوين Nginx المخصص
COPY nginx.conf /etc/nginx/conf.d/default.conf

# فتح المنفذ 80
EXPOSE 80

# تشغيل Nginx
CMD ["nginx", "-g", "daemon off;"]
