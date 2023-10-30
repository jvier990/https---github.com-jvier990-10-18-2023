import 'package:flutter/material.dart';
class HerMessageBubble extends StatelessWidget {
  const  HerMessageBubble({super.key});
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.tertiary, borderRadius: BorderRadius.circular
              (20)),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('Hola Mundo ',
              style: TextStyle(color: Colors.white),
            ),
            ),
          ),
        const SizedBox(height: 5),
        const _ImageBubble(urlGif: 'https://media1.giphy.com/media/DB8ZTP4BecPXvPf98T/giphy.gif?cid=ecf05e47xqyb8fdxzzjky8n6o5tld4ptmt6ng4lq11ii2dkr&ep=v1_gifs_gifId&rid=giphy.gif&ct=g'),
        const SizedBox(height: 10)
      ],
    );
  }
}
class _ImageBubble extends StatelessWidget {
  final String urlGif;
  const _ImageBubble({required this.urlGif});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(urlGif,
      width: size.width * 0.7,
      height: 150,
      fit: BoxFit.cover,
      loadingBuilder: (context, child, loadingProgress) =>
        (loadingProgress == null)
          ? child
          : Container(
              width: size.width * 0.7,
              height: 150,
              child: const Text('Cargando la imagen ... '),
          )),
    );
  }
}










