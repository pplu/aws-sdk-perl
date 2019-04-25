
package Paws::Translate::TranslateText;
  use Moose;
  has SourceLanguageCode => (is => 'ro', isa => 'Str', required => 1);
  has TargetLanguageCode => (is => 'ro', isa => 'Str', required => 1);
  has TerminologyNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Text => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TranslateText');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Translate::TranslateTextResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Translate::TranslateText - Arguments for method TranslateText on L<Paws::Translate>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TranslateText on the
L<Amazon Translate|Paws::Translate> service. Use the attributes of this class
as arguments to method TranslateText.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TranslateText.

=head1 SYNOPSIS

    my $translate = Paws->service('Translate');
    my $TranslateTextResponse = $translate->TranslateText(
      SourceLanguageCode => 'MyLanguageCodeString',
      TargetLanguageCode => 'MyLanguageCodeString',
      Text               => 'MyBoundedLengthString',
      TerminologyNames   => [
        'MyResourceName', ...    # min: 1, max: 256
      ],                         # OPTIONAL
    );

    # Results:
    my $AppliedTerminologies = $TranslateTextResponse->AppliedTerminologies;
    my $SourceLanguageCode   = $TranslateTextResponse->SourceLanguageCode;
    my $TargetLanguageCode   = $TranslateTextResponse->TargetLanguageCode;
    my $TranslatedText       = $TranslateTextResponse->TranslatedText;

    # Returns a L<Paws::Translate::TranslateTextResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/translate/TranslateText>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SourceLanguageCode => Str

The language code for the language of the source text. The language
must be a language supported by Amazon Translate.

To have Amazon Translate determine the source language of your text,
you can specify C<auto> in the C<SourceLanguageCode> field. If you
specify C<auto>, Amazon Translate will call Amazon Comprehend to
determine the source language.



=head2 B<REQUIRED> TargetLanguageCode => Str

The language code requested for the language of the target text. The
language must be a language supported by Amazon Translate.



=head2 TerminologyNames => ArrayRef[Str|Undef]

The TerminologyNames list that is taken as input to the TranslateText
request. This has a minimum length of 0 and a maximum length of 1.



=head2 B<REQUIRED> Text => Str

The text to translate. The text string can be a maximum of 5,000 bytes
long. Depending on your character set, this may be fewer than 5,000
characters.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TranslateText in L<Paws::Translate>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

