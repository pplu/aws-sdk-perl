
package Paws::Comprehend::DetectKeyPhrases;
  use Moose;
  has LanguageCode => (is => 'ro', isa => 'Str', required => 1);
  has Text => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DetectKeyPhrases');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Comprehend::DetectKeyPhrasesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::DetectKeyPhrases - Arguments for method DetectKeyPhrases on L<Paws::Comprehend>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DetectKeyPhrases on the 
L<Amazon Comprehend|Paws::Comprehend> service. Use the attributes of this class
as arguments to method DetectKeyPhrases.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DetectKeyPhrases.

As an example:

  $service_obj->DetectKeyPhrases(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/comprehend/DetectKeyPhrases>
=head1 ATTRIBUTES


=head2 B<REQUIRED> LanguageCode => Str

The RFC 5646 language code for the input text. If you don't specify a
language code, Amazon Comprehend detects the dominant language. If you
specify the code for a language that Amazon Comprehend does not
support, it returns and C<UnsupportedLanguageException>. For more
information about RFC 5646, see Tags for Identifying Languages
(https://tools.ietf.org/html/rfc5646) on the I<IETF Tools> web site.

Valid values are: C<"en">, C<"es">

=head2 B<REQUIRED> Text => Str

A UTF-8 text string. Each string must contain fewer that 5,000 bytes of
UTF-8 encoded characters.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DetectKeyPhrases in L<Paws::Comprehend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

