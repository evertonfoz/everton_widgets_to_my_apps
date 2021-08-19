import 'package:clipboard/clipboard.dart';
import 'package:everton_widgets_to_my_apps/snackbar/snackbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ErrorToCopyToTeamECA extends StatelessWidget {
  final String? errorToCopy;

  const ErrorToCopyToTeamECA({required this.errorToCopy});

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: errorToCopy != null,
      child: GestureDetector(
        child: Text(
          'Pressione aqui para copiar o erro para enviar para a equipe do DANÇO CONTIGO',
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            color: Colors.black54,
            fontSize: 10,
          ),
        ),
        onTap: () => FlutterClipboard.copy(errorToCopy!).then(
          (value) => showBottomSnackBarECA(
              context: context,
              durationSeconds: 3,
              title: 'Mensagem copiada.',
              content: 'Cole ela no Whatsapp da equipe do DANÇO CONTIGO'),
        ),
      ),
    );
  }
}
