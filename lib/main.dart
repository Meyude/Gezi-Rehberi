import 'package:flutter/material.dart';

import 'product/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trip App',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffold arka planı otomatik olarak ayarladığımız 'surface' rengini alacak.
      appBar: AppBar(
        title: ProductText.titleLarge(context, 'Keşfet'),
        centerTitle: true,
        backgroundColor: Colors.transparent, // Modern görünüm için şeffaf
        elevation: 0,
      ),
      // Tüm sayfaya standart 20px (veya 16px) boşluğumuzu veriyoruz
      body: SingleChildScrollView(
        padding: const AppPagePadding.all20(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 1. LORA FONTU TESTİ (Başlık)
            ProductText.h2(context, 'RotaSenin\'e\nHoş Geldin!'),

            const SizedBox(height: 8),

            // 2. INTER FONTU TESTİ (Açıklama)
            ProductText.bodyLarge(
              context,
              'Kuru listeleri bırak, gerçekten yaşanmış rotaları keşfetmeye hemen başla.',
              color: context
                  .colorScheme
                  .onSurfaceVariant, // Yazı rengini hafif kırdık
            ),

            const SizedBox(height: 32),

            // 3. THEME EXTENSION & CARD TESTİ
            Container(
              padding: const AppPagePadding.all16(),
              decoration: BoxDecoration(
                // Extension'dan özel kart arka planımızı çekiyoruz
                color: context.appTheme.cardBackground,
                borderRadius: BorderRadius.circular(16),
                // İnce bir çerçeve çizgisi
                border: Border.all(color: context.appTheme.divider),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.map_outlined,
                    size: 40,
                    color: context.colorScheme.primary, // Ana mavi rengimiz
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ProductText.titleMedium(context, 'Günün Rotası'),
                        ProductText.bodyMedium(
                          context,
                          'Roma\'nın Gizli Sokakları',
                          color: context
                              .appTheme
                              .warning, // Hardal/Sarı vurgu rengimiz
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: context.appTheme.divider,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 32),

            // 4. BUTON VE ANA RENK TESTİ
            SizedBox(
              width: double.infinity,
              height: 56, // Standart dokunma yüksekliği
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: context.colorScheme.primary,
                  foregroundColor: context.colorScheme.onPrimary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {},
                child: ProductText.titleMedium(
                  context,
                  'Kendi Rotanı Oluştur',
                  color: context.colorScheme.onPrimary, // Beyaz metin
                ),
              ),
            ),

            const SizedBox(height: 32),

            // 5. EXTENSION DURUM RENKLERİ TESTİ (Success, Warning)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildStatusChip(
                  context,
                  'Güvenilir',
                  Icons.verified,
                  context.appTheme.success,
                ),
                _buildStatusChip(
                  context,
                  'Popüler',
                  Icons.local_fire_department,
                  context.appTheme.warning,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Ufak bir yardımcı widget (Durum çipleri için)
  Widget _buildStatusChip(
    BuildContext context,
    String text,
    IconData icon,
    Color color,
  ) {
    return Container(
      padding: const AppPagePadding.horizontalSymmetricMedium().copyWith(
        top: 8,
        bottom: 8,
      ),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          Icon(icon, size: 18, color: color),
          const SizedBox(width: 8),
          ProductText.labelLarge(context, text, color: color),
        ],
      ),
    );
  }
}
