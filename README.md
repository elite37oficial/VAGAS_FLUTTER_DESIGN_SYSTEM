# Introdução
O módulo `VAGAS_DESIGN_SYSTEM` é responsável por reunir e disponibilizar componentes visuais comuns entre demais módulos na aplicação. Este módulo reúne os componentes, arquivos de configuração de temas e responsividade.

# Instalação
Para instalar o Módulo `VAGAS_DESIGN_SYSTEM` basta seguir os seguintes passos:
1.	Importar o pacote `VAGAS_DESIGN_SYSTEM` no arquivo `pubspec.yaml` do seu projeto. 
    ``` yaml
    vagas_design_system:
    # path: ../../VAGAS_FLUTTER_DESIGN_SYSTEM/    #Para trabalhar com o pacote localmente.
    git:
      url: https://github.com/elite37oficial/VAGAS_FLUTTER_DESIGN_SYSTEM
      ref: main
    ```
2.	Rodar o comando `Get Packages` do flutter.
3.	Importar o pacote `VAGAS_DESIGN_SYSTEM` nos arquivos `.dart` que deseja utilizar os componentes `VAGAS_DESIGN_SYSTEM`.


=======  
O pacote `VAGAS_DESIGN_SYSTEM` reúne os componentes visuais, arquivos de configuração de temas e cores, imagens, páginas e pacotes.  
Criado em: 03/2023


Dependências Internas
=============================
```mermaid
graph TD
    subgraph App + VAGAS_DESIGN_SYSTEM
    A[App] -->B[Module]
    end
```
Dependências Externas
==========
* Flutter SDK: 3.0.0
* Font Awesome Flutter: 10.4.0
* Auto Size Text: 3.0.0
* Flutter Svg: 1.1.6

Recursos — Referências de API
========
### Themes
* App Colors: `package:vagas_design_system/src/themes/app_colors.dart` Abstração das cores para serem utilizadas na aplicação.
* App Themes: `package:vagas_design_system/src/themes/app_themes.dart` Abstração dos temas para serem utilizadas na aplicação.
* App Images: `package:vagas_design_system/src/themes/app_images.dart` Abstração dos caminhos dos imagens para serem utilizadas na aplicação.

### Packages
* Font Awesome Flutter: `package:font_awesome_flutter/font_awesome_flutter.dart` Pacote responsável pelas fontes e ícones utilizados na aplicação.
* Auto Size Text: `package:auto_size_text/auto_size_text.dart` Pacote responsável pela responsividade dos textos utilizados na aplicação.
* Flutter Svg: `package:flutter_svg/flutter_svg.dart` Pacote responsável pela renderização dos arquivos SVGs utilizados na aplicação.

### Widgets
* Responsive Text Widget: `package:vagas_design_system/src/widgets/responsive_text_widget.dart` Componente responsável pela responsividade de textos na aplicação.

### Pages
* Loading Page: `package:vagas_design_system/src/pages/loading_page.dart` Página de carregamento padrão.
* Error Page: `package:vagas_design_system/src/pages/error_page.dart` Página de Erro padrão.


