import 'package:bloc/bloc.dart';
import 'package:domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shorten_link_cubit.freezed.dart';
part 'shorten_link_state.dart';

class ShortenLinkCubit extends Cubit<ShortenLinkState> {
  ShortenLinkCubit(this.shortenLink) : super(ShortenLinkState());

  final IShortenLink shortenLink;

  Future<void> shortenUrl(String url) async {
    if (url.isEmpty) return;

    emit(state.copyWith(isLoading: true));

    final ShortenedUrl shortenedUrl = await shortenLink(url);

    _addShortenedUrlToList(shortenedUrl);

    emit(state.copyWith(isLoading: false));
  }

  void _addShortenedUrlToList(ShortenedUrl urlEntity) {
    List<ShortenedUrl> urls = List<ShortenedUrl>.of(state.shortenedUrls)
      ..add(urlEntity);
    emit(
      state.copyWith(shortenedUrls: urls),
    );
  }
}
