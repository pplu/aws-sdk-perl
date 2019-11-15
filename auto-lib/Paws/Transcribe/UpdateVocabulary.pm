
package Paws::Transcribe::UpdateVocabulary;
  use Moose;
  has LanguageCode => (is => 'ro', isa => 'Str', required => 1);
  has Phrases => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has VocabularyFileUri => (is => 'ro', isa => 'Str');
  has VocabularyName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateVocabulary');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Transcribe::UpdateVocabularyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transcribe::UpdateVocabulary - Arguments for method UpdateVocabulary on L<Paws::Transcribe>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateVocabulary on the
L<Amazon Transcribe Service|Paws::Transcribe> service. Use the attributes of this class
as arguments to method UpdateVocabulary.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateVocabulary.

=head1 SYNOPSIS

    my $transcribe = Paws->service('Transcribe');
    my $UpdateVocabularyResponse = $transcribe->UpdateVocabulary(
      LanguageCode   => 'en-US',
      VocabularyName => 'MyVocabularyName',
      Phrases        => [
        'MyPhrase', ...    # max: 256
      ],                   # OPTIONAL
      VocabularyFileUri => 'MyUri',    # OPTIONAL
    );

    # Results:
    my $LanguageCode     = $UpdateVocabularyResponse->LanguageCode;
    my $LastModifiedTime = $UpdateVocabularyResponse->LastModifiedTime;
    my $VocabularyName   = $UpdateVocabularyResponse->VocabularyName;
    my $VocabularyState  = $UpdateVocabularyResponse->VocabularyState;

    # Returns a L<Paws::Transcribe::UpdateVocabularyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/transcribe/UpdateVocabulary>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LanguageCode => Str

The language code of the vocabulary entries.

Valid values are: C<"en-US">, C<"es-US">, C<"en-AU">, C<"fr-CA">, C<"en-GB">, C<"de-DE">, C<"pt-BR">, C<"fr-FR">, C<"it-IT">, C<"ko-KR">, C<"es-ES">, C<"en-IN">, C<"hi-IN">, C<"ar-SA">, C<"ru-RU">, C<"zh-CN">, C<"nl-NL">, C<"id-ID">, C<"ta-IN">, C<"fa-IR">, C<"en-IE">, C<"en-AB">, C<"en-WL">, C<"pt-PT">

=head2 Phrases => ArrayRef[Str|Undef]

An array of strings containing the vocabulary entries.



=head2 VocabularyFileUri => Str

The S3 location of the text file that contains the definition of the
custom vocabulary. The URI must be in the same region as the API
endpoint that you are calling. The general form is

C<https://s3.E<lt>aws-regionE<gt>.amazonaws.com/E<lt>bucket-nameE<gt>/E<lt>keyprefixE<gt>/E<lt>objectkeyE<gt>>

For example:

C<https://s3.us-east-1.amazonaws.com/examplebucket/vocab.txt>

For more information about S3 object names, see Object Keys
(http://docs.aws.amazon.com/AmazonS3/latest/dev/UsingMetadata.html#object-keys)
in the I<Amazon S3 Developer Guide>.

For more information about custom vocabularies, see Custom Vocabularies
(http://docs.aws.amazon.com/transcribe/latest/dg/how-it-works.html#how-vocabulary).



=head2 B<REQUIRED> VocabularyName => Str

The name of the vocabulary to update. The name is case-sensitive.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateVocabulary in L<Paws::Transcribe>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

