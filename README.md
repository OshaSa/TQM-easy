# TQM easy

نظام متابعة اختبار الجودة (ملاحظات، إسناد، إعادة اختبار، اعتماد الجاهزية). يعمل كصفحة واحدة ويخزّن البيانات في Supabase.

## التشغيل
1. أنشئ مشروعاً مجانياً على https://supabase.com
2. من SQL Editor شغّل محتوى `supabase_setup.sql`
3. من Project Settings > API انسخ `Project URL` و `anon public key` وضعهما في `config.js`
4. فعّل GitHub Pages: Settings > Pages > Deploy from branch > main > / (root)
5. افتح `https://ayeshashadi5-sudo.github.io/<اسم-المستودع>/`

أول دخول: الاسم `admin` وكلمة السر `1234`، ثم غيّرها من إدارة المستخدمين.

## تنبيه أمني
مفتاح anon ظاهر لأي زائر، والسياسة الحالية تسمح بالقراءة والكتابة للجميع، فأي شخص يملك الرابط تقنياً يقدر يقرأ المستخدمين وكلمات السر. مناسب للتجربة والفرق الصغيرة فقط.
