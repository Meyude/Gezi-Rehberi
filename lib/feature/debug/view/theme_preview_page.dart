import 'package:flutter/material.dart';
import 'package:trip_app/product/design_system/design_system.dart';
import 'package:trip_app/product/init/theme/custom_color_scheme.dart';

class ThemePreviewPage extends StatelessWidget {
  const ThemePreviewPage({
    super.key,
    required this.themeMode,
    required this.onSelectThemeMode,
  });

  final ThemeMode themeMode;
  final ValueChanged<ThemeMode> onSelectThemeMode;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final ext = context.productTheme;

    return Scaffold(
      appBar: AppBar(
        title: ProductText.titleLarge(context, 'RotaSenin'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const PagePadding.all20(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _ThemeSwitcher(current: themeMode, onSelect: onSelectThemeMode),
            const SizedBox(height: 24),
            ProductText.h2(context, 'RotaSenin\'e\nHoş Geldin!'),
            const SizedBox(height: 8),
            ProductText.bodyLarge(
              context,
              'Kuru listeleri bırak, gerçekten yaşanmış rotaları keşfetmeye hemen başla.',
              color: scheme.onSurfaceVariant,
            ),
            const SizedBox(height: 32),
            _RouteCard(ext: ext, scheme: scheme),
            const SizedBox(height: 32),
            SizedBox(
              width: double.infinity,
              height: LayoutSizes.buttonHeightLarge,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: scheme.primary,
                  foregroundColor: scheme.onPrimary,
                  shape: RoundedRectangleBorder(
                    borderRadius: Radii.circular12,
                  ),
                ),
                onPressed: () {},
                child: ProductText.titleMedium(
                  context,
                  'Kendi Rotanı Oluştur',
                  color: scheme.onPrimary,
                ),
              ),
            ),
            const SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _StatusChip(
                  context: context,
                  label: 'Güvenilir',
                  icon: Icons.verified,
                  color: ext.success,
                ),
                _StatusChip(
                  context: context,
                  label: 'Popüler',
                  icon: Icons.local_fire_department,
                  color: ext.warning,
                ),
              ],
            ),
            const SizedBox(height: 32),
            _ColorPaletteSwatch(scheme: scheme, ext: ext),
          ],
        ),
      ),
    );
  }
}

class _ThemeSwitcher extends StatelessWidget {
  const _ThemeSwitcher({required this.current, required this.onSelect});

  final ThemeMode current;
  final ValueChanged<ThemeMode> onSelect;

  @override
  Widget build(BuildContext context) {
    return SegmentedButton<ThemeMode>(
      segments: const [
        ButtonSegment(value: ThemeMode.light, icon: Icon(Icons.light_mode), label: Text('Açık')),
        ButtonSegment(value: ThemeMode.system, icon: Icon(Icons.brightness_auto), label: Text('Sistem')),
        ButtonSegment(value: ThemeMode.dark, icon: Icon(Icons.dark_mode), label: Text('Koyu')),
      ],
      selected: {current},
      onSelectionChanged: (s) => onSelect(s.first),
    );
  }
}

class _RouteCard extends StatelessWidget {
  const _RouteCard({required this.ext, required this.scheme});

  final ProductThemeExtension ext;
  final ColorScheme scheme;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const PagePadding.all16(),
      decoration: BoxDecoration(
        color: ext.cardBackground,
        borderRadius: Radii.circular16,
        border: Border.all(color: ext.divider),
      ),
      child: Row(
        children: [
          Icon(Icons.map_outlined, size: LayoutSizes.iconLarge, color: scheme.primary),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProductText.titleMedium(context, 'Günün Rotası'),
                ProductText.bodyMedium(
                  context,
                  'Roma\'nın Gizli Sokakları',
                  color: ext.warning,
                ),
              ],
            ),
          ),
          Icon(Icons.arrow_forward_ios, size: 16, color: ext.divider),
        ],
      ),
    );
  }
}

class _StatusChip extends StatelessWidget {
  const _StatusChip({
    required this.context,
    required this.label,
    required this.icon,
    required this.color,
  });

  final BuildContext context;
  final String label;
  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext _) {
    return Container(
      padding: const PagePadding.horizontalSymmetricMedium().copyWith(top: 8, bottom: 8),
      decoration: BoxDecoration(borderRadius: Radii.circular20),
      child: Row(
        children: [
          Icon(icon, size: 18, color: color),
          const SizedBox(width: 8),
          ProductText.labelLarge(context, label, color: color),
        ],
      ),
    );
  }
}

class _ColorPaletteSwatch extends StatelessWidget {
  const _ColorPaletteSwatch({required this.scheme, required this.ext});

  final ColorScheme scheme;
  final ProductThemeExtension ext;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: [
        _Swatch(color: scheme.primary, label: 'primary'),
        _Swatch(color: scheme.secondary, label: 'secondary'),
        _Swatch(color: scheme.tertiary, label: 'tertiary'),
        _Swatch(color: ext.success, label: 'success'),
        _Swatch(color: ext.warning, label: 'warning'),
        _Swatch(color: ext.info, label: 'info'),
        _Swatch(color: ext.cardBackground, label: 'card'),
      ],
    );
  }
}

class _Swatch extends StatelessWidget {
  const _Swatch({required this.color, required this.label});

  final Color color;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: color,
            borderRadius: Radii.circular8,
            border: Border.all(color: Theme.of(context).colorScheme.outlineVariant),
          ),
        ),
        const SizedBox(height: 4),
        Text(label, style: Theme.of(context).textTheme.labelSmall),
      ],
    );
  }
}
