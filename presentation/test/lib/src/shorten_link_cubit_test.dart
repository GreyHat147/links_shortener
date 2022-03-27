import 'package:bloc_test/bloc_test.dart';
import 'package:domain/domain.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:presentation/src/shorten_link/shorten_link_cubit.dart';
import 'package:test/test.dart';

import 'shorten_link_cubit_test.mocks.dart';

@GenerateMocks(<Type>[IShortenLink])
void main() {
  group("ShortenLinkCubit", () {
    String shortenUrl = "https://www.youtube.com";
    blocTest(
      "should shorten a url",
      build: () {
        final MockIShortenLink shortenLinkUseCase = MockIShortenLink();

        when(shortenLinkUseCase(shortenUrl)).thenAnswer(
          (realInvocation) => Future.value(
            ShortenedUrl(
              url: shortenUrl,
              initialUrl: "https://url-shortener-nu.herokuapp.com/short/60328",
              alias: "1",
            ),
          ),
        );
        return ShortenLinkCubit(shortenLinkUseCase);
      },
      act: (ShortenLinkCubit cubit) => cubit.shortenUrl(shortenUrl),
      expect: () => <Matcher>[
        equals(
          ShortenLinkState(
            isLoading: true,
            shortenedUrls: [],
          ),
        ),
        equals(
          ShortenLinkState(
            isLoading: true,
            shortenedUrls: <ShortenedUrl>[
              ShortenedUrl(
                url: shortenUrl,
                initialUrl:
                    "https://url-shortener-nu.herokuapp.com/short/60328",
                alias: "1",
              )
            ],
          ),
        ),
        equals(
          ShortenLinkState(
            isLoading: false,
            shortenedUrls: <ShortenedUrl>[
              ShortenedUrl(
                url: shortenUrl,
                initialUrl:
                    "https://url-shortener-nu.herokuapp.com/short/60328",
                alias: "1",
              )
            ],
          ),
        ),
      ],
    );
  });
}
