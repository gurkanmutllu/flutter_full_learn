part of './part_of_learn.dart';

class _PartOfAppBar extends StatelessWidget with PreferredSizeWidget {
  const _PartOfAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('a'),
      actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.abc_rounded))],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
