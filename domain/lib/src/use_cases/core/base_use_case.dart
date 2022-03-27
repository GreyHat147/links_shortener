abstract class BaseUseCase<I, R> {
  R call(I data);
}
