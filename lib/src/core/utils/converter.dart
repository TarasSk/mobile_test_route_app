import 'dart:convert';

class IterableConverter<S, T> extends Converter<Iterable<S>, Iterable<T>> {
  IterableConverter(this.converter);

  final Converter<S, T> converter;

  @override
  Iterable<T> convert(Iterable<S> input) => input.map(converter.convert);
}

extension ConverterExt<S, T> on Converter<S, T> {
  IterableConverter<S, T> toIterable() {
    return IterableConverter<S, T>(this);
  }

  Iterable<T> convertIterable(Iterable<S> input) => input.map(convert);
}
