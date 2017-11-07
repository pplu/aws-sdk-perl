
package Paws::Polly::DescribeVoices;
  use Moose;
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

Paws::Polly::DescribeVoices - Arguments for method DescribeVoices on Paws::Polly

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeVoices on the 
Amazon Polly service. Use the attributes of this class
as arguments to method DescribeVoices.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeVoices.

As an example:

  $service_obj->DescribeVoices(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 LanguageCode => Str

The language identification tag (ISO 639 code for the language name-ISO
3166 country code) for filtering the list of voices returned. If you
don't specify this optional parameter, all available voices are
returned.

Valid values are: C<"cy-GB">, C<"da-DK">, C<"de-DE">, C<"en-AU">, C<"en-GB">, C<"en-GB-WLS">, C<"en-IN">, C<"en-US">, C<"es-ES">, C<"es-US">, C<"fr-CA">, C<"fr-FR">, C<"is-IS">, C<"it-IT">, C<"ja-JP">, C<"nb-NO">, C<"nl-NL">, C<"pl-PL">, C<"pt-BR">, C<"pt-PT">, C<"ro-RO">, C<"ru-RU">, C<"sv-SE">, C<"tr-TR">

=head2 NextToken => Str

An opaque pagination token returned from the previous C<DescribeVoices>
operation. If present, this indicates where to continue the listing.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeVoices in L<Paws::Polly>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

