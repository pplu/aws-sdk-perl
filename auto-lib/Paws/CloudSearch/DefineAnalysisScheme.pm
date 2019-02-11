
package Paws::CloudSearch::DefineAnalysisScheme;
  use Moose;
  has AnalysisScheme => (is => 'ro', isa => 'Paws::CloudSearch::AnalysisScheme', required => 1);
  has DomainName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DefineAnalysisScheme');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudSearch::DefineAnalysisSchemeResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DefineAnalysisSchemeResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearch::DefineAnalysisScheme - Arguments for method DefineAnalysisScheme on L<Paws::CloudSearch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DefineAnalysisScheme on the
L<Amazon CloudSearch|Paws::CloudSearch> service. Use the attributes of this class
as arguments to method DefineAnalysisScheme.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DefineAnalysisScheme.

=head1 SYNOPSIS

    my $cloudsearch = Paws->service('CloudSearch');
    my $DefineAnalysisSchemeResponse = $cloudsearch->DefineAnalysisScheme(
      AnalysisScheme => {
        AnalysisSchemeLanguage => 'ar'
        , # values: ar, bg, ca, cs, da, de, el, en, es, eu, fa, fi, fr, ga, gl, he, hi, hu, hy, id, it, ja, ko, lv, mul, nl, no, pt, ro, ru, sv, th, tr, zh-Hans, zh-Hant
        AnalysisSchemeName => 'MyStandardName',    # min: 1, max: 64
        AnalysisOptions    => {
          AlgorithmicStemming =>
            'none',    # values: none, minimal, light, full; OPTIONAL
          JapaneseTokenizationDictionary => 'MyString',    # OPTIONAL
          StemmingDictionary             => 'MyString',    # OPTIONAL
          Stopwords                      => 'MyString',    # OPTIONAL
          Synonyms                       => 'MyString',    # OPTIONAL
        },    # OPTIONAL
      },
      DomainName => 'MyDomainName',

    );

    # Results:
    my $AnalysisScheme = $DefineAnalysisSchemeResponse->AnalysisScheme;

    # Returns a L<Paws::CloudSearch::DefineAnalysisSchemeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudsearch/DefineAnalysisScheme>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AnalysisScheme => L<Paws::CloudSearch::AnalysisScheme>





=head2 B<REQUIRED> DomainName => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DefineAnalysisScheme in L<Paws::CloudSearch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

