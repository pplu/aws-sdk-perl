
package Paws::Polly::DescribeVoices;
  use Moose;
  has IncludeAdditionalLanguageCodes => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'IncludeAdditionalLanguageCodes');
  has LanguageCode => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'LanguageCode');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeVoices');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/voices');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Polly::DescribeVoicesOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Polly::DescribeVoices - Arguments for method DescribeVoices on L<Paws::Polly>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeVoices on the
L<Amazon Polly|Paws::Polly> service. Use the attributes of this class
as arguments to method DescribeVoices.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeVoices.

=head1 SYNOPSIS

    my $polly = Paws->service('Polly');
    # To describe available voices
    # Returns the list of voices that are available for use when requesting
    # speech synthesis. Displayed languages are those within the specified
    # language code. If no language code is specified, voices for all available
    # languages are displayed.
    my $DescribeVoicesOutput = $polly->DescribeVoices(
      {
        'LanguageCode' => 'en-GB'
      }
    );

    # Results:
    my $Voices = $DescribeVoicesOutput->Voices;

    # Returns a L<Paws::Polly::DescribeVoicesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/polly/DescribeVoices>

=head1 ATTRIBUTES


=head2 IncludeAdditionalLanguageCodes => Bool

Boolean value indicating whether to return any bilingual voices that
use the specified language as an additional language. For instance, if
you request all languages that use US English (es-US), and there is an
Italian voice that speaks both Italian (it-IT) and US English, that
voice will be included if you specify C<yes> but not if you specify
C<no>.



=head2 LanguageCode => Str

The language identification tag (ISO 639 code for the language name-ISO
3166 country code) for filtering the list of voices returned. If you
don't specify this optional parameter, all available voices are
returned.

Valid values are: C<"cmn-CN">, C<"cy-GB">, C<"da-DK">, C<"de-DE">, C<"en-AU">, C<"en-GB">, C<"en-GB-WLS">, C<"en-IN">, C<"en-US">, C<"es-ES">, C<"es-MX">, C<"es-US">, C<"fr-CA">, C<"fr-FR">, C<"is-IS">, C<"it-IT">, C<"ja-JP">, C<"hi-IN">, C<"ko-KR">, C<"nb-NO">, C<"nl-NL">, C<"pl-PL">, C<"pt-BR">, C<"pt-PT">, C<"ro-RO">, C<"ru-RU">, C<"sv-SE">, C<"tr-TR">

=head2 NextToken => Str

An opaque pagination token returned from the previous C<DescribeVoices>
operation. If present, this indicates where to continue the listing.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeVoices in L<Paws::Polly>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

