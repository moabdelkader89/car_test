# استخدم صورة JDK الأساسية
FROM openjdk:11-jre-slim

# تحديد متغير بيئة للملف JAR
ARG JAR_FILE=C:\ProgramData\Jenkins\.jenkins\workspace\docker\target

# نسخ الملف JAR إلى صورة Docker
COPY ${JAR_FILE} app.jar

# تحديد المنفذ الذي سيستمع عليه التطبيق
EXPOSE 8080

# الأمر لتشغيل التطبيق
ENTRYPOINT ["java", "-jar", "app.jar/C:\ProgramData\Jenkins\.jenkins\workspace\docker\target"]
