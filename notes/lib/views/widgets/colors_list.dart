import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/add_cubit/add_note_cubit.dart';

class ColorsList extends StatefulWidget {
  const ColorsList({super.key});

  @override
  State<ColorsList> createState() => _ColorsListState();
}

class _ColorsListState extends State<ColorsList> {
  int currentIndex = 0;
  List<Color> colors = const [
    Color(0xff83b692),
    Color(0xffac3931),
    Color(0xffe5d352),
    Color(0xff537d8d),
    Color(0xffd9e76c),
    Color(0xff482c3d),
    Color(0xffd17b0f),
    Color(0xff925e78),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 38 * 2,
      margin: EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colors.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              currentIndex = index;
              BlocProvider.of<AddNoteCubit>(context).color = colors[index];
            });
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ColorItiem(
              color: colors[index],
              isActive: currentIndex == index,
            ),
          ),
        ),
      ),
    );
  }
}

class ColorItiem extends StatelessWidget {
  const ColorItiem({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            radius: 28,
            backgroundColor: Colors.white,
            child: CircleAvatar(radius: 24, backgroundColor: color),
          )
        : CircleAvatar(radius: 24, backgroundColor: color);
  }
}
