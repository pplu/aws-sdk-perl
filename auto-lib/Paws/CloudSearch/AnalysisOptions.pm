package Paws::CloudSearch::AnalysisOptions;
  use Moose;
  has AlgorithmicStemming => (is => 'ro', isa => 'Str');
  has JapaneseTokenizationDictionary => (is => 'ro', isa => 'Str');
  has StemmingDictionary => (is => 'ro', isa => 'Str');
  has Stopwords => (is => 'ro', isa => 'Str');
  has Synonyms => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearch::AnalysisOptions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudSearch::AnalysisOptions object:

  $service_obj->Method(Att1 => { AlgorithmicStemming => $value, ..., Synonyms => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudSearch::AnalysisOptions object:

  $result = $service_obj->Method(...);
  $result->Att1->AlgorithmicStemming

=head1 DESCRIPTION

Synonyms, stopwords, and stemming options for an analysis scheme.
Includes tokenization dictionary for Japanese.

=head1 ATTRIBUTES


=head2 AlgorithmicStemming => Str

  The level of algorithmic stemming to perform: C<none>, C<minimal>,
C<light>, or C<full>. The available levels vary depending on the
language. For more information, see Language Specific Text Processing
Settings
(http://docs.aws.amazon.com/cloudsearch/latest/developerguide/text-processing.html#text-processing-settings)
in the I<Amazon CloudSearch Developer Guide>


=head2 JapaneseTokenizationDictionary => Str

  A JSON array that contains a collection of terms, tokens, readings and
part of speech for Japanese Tokenizaiton. The Japanese tokenization
dictionary enables you to override the default tokenization for
selected terms. This is only valid for Japanese language fields.


=head2 StemmingDictionary => Str

  A JSON object that contains a collection of string:value pairs that
each map a term to its stem. For example, C<{"term1": "stem1", "term2":
"stem2", "term3": "stem3"}>. The stemming dictionary is applied in
addition to any algorithmic stemming. This enables you to override the
results of the algorithmic stemming to correct specific cases of
overstemming or understemming. The maximum size of a stemming
dictionary is 500 KB.


=head2 Stopwords => Str

  A JSON array of terms to ignore during indexing and searching. For
example, C<["a", "an", "the", "of"]>. The stopwords dictionary must
explicitly list each word you want to ignore. Wildcards and regular
expressions are not supported.


=head2 Synonyms => Str

  A JSON object that defines synonym groups and aliases. A synonym group
is an array of arrays, where each sub-array is a group of terms where
each term in the group is considered a synonym of every other term in
the group. The aliases value is an object that contains a collection of
string:value pairs where the string specifies a term and the array of
values specifies each of the aliases for that term. An alias is
considered a synonym of the specified term, but the term is not
considered a synonym of the alias. For more information about
specifying synonyms, see Synonyms
(http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-analysis-schemes.html#synonyms)
in the I<Amazon CloudSearch Developer Guide>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudSearch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

