# everton_widgets_to_my_apps

During my process of studying and investigating Flutter, I did several tests, creating various widgets. Recently, in two projects, which share the same visual identity, referring to widgets, I saw the need to have these widgets in a package, because when updates, corrective or evolutionary could occur, they would be in a single place. This is the reason for creating this package, which I hope will be useful to you.

## Widgets presentes no pacote

1. **InProcessingWidget**

   É um StatelessWidget, que recebe, em seu construtor, 1 argumento, chamado **urlImage**, que será a imagem renderizada pelo componente. Caso nenhuma URL seja enviada, o widget realizará rendererização de sua imagem padrão, veja-a na sequência.

   ![InProcessingWidget](assets/readme/in_processing_01.png)

   - List<Widget> actions;
   - double elevation;
   - Widget? leading;

2. **AppBarECA**

   É um StatelessWidget, que recebe, em seu construtor, três argumentos:

   - List<Widget> actions;
   - double elevation;
   - Widget? leading;
