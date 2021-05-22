
package Paws::Transcribe::UpdateMedicalVocabulary;
  use Moose;
  has LanguageCode => (is => 'ro', isa => 'Str', required => 1);
  has VocabularyFileUri => (is => 'ro', isa => 'Str');
  has VocabularyName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateMedicalVocabulary');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Transcribe::UpdateMedicalVocabularyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transcribe::UpdateMedicalVocabulary - Arguments for method UpdateMedicalVocabulary on L<Paws::Transcribe>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateMedicalVocabulary on the
L<Amazon Transcribe Service|Paws::Transcribe> service. Use the attributes of this class
as arguments to method UpdateMedicalVocabulary.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateMedicalVocabulary.

=head1 SYNOPSIS

    my $transcribe = Paws->service('Transcribe');
    my $UpdateMedicalVocabularyResponse = $transcribe->UpdateMedicalVocabulary(
      LanguageCode      => 'af-ZA',
      VocabularyName    => 'MyVocabularyName',
      VocabularyFileUri => 'MyUri',              # OPTIONAL
    );

    # Results:
    my $LanguageCode     = $UpdateMedicalVocabularyResponse->LanguageCode;
    my $LastModifiedTime = $UpdateMedicalVocabularyResponse->LastModifiedTime;
    my $VocabularyName   = $UpdateMedicalVocabularyResponse->VocabularyName;
    my $VocabularyState  = $UpdateMedicalVocabularyResponse->VocabularyState;

    # Returns a L<Paws::Transcribe::UpdateMedicalVocabularyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/transcribe/UpdateMedicalVocabulary>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LanguageCode => Str

The language code of the language used for the entries in the updated
vocabulary. US English (en-US) is the only valid language code in
Amazon Transcribe Medical.

Valid values are: C<"af-ZA">, C<"ar-AE">, C<"ar-SA">, C<"cy-GB">, C<"da-DK">, C<"de-CH">, C<"de-DE">, C<"en-AB">, C<"en-AU">, C<"en-GB">, C<"en-IE">, C<"en-IN">, C<"en-US">, C<"en-WL">, C<"es-ES">, C<"es-US">, C<"fa-IR">, C<"fr-CA">, C<"fr-FR">, C<"ga-IE">, C<"gd-GB">, C<"he-IL">, C<"hi-IN">, C<"id-ID">, C<"it-IT">, C<"ja-JP">, C<"ko-KR">, C<"ms-MY">, C<"nl-NL">, C<"pt-BR">, C<"pt-PT">, C<"ru-RU">, C<"ta-IN">, C<"te-IN">, C<"tr-TR">, C<"zh-CN">

=head2 VocabularyFileUri => Str

The location in Amazon S3 of the text file that contains the you use
for your custom vocabulary. The URI must be in the same AWS Region as
the resource that you are calling. The following is the format for a
URI:

C<https://s3.E<lt>aws-regionE<gt>.amazonaws.com/E<lt>bucket-nameE<gt>/E<lt>keyprefixE<gt>/E<lt>objectkeyE<gt>>

For example:

C<https://s3.us-east-1.amazonaws.com/AWSDOC-EXAMPLE-BUCKET/vocab.txt>

For more information about Amazon S3 object names, see Object Keys
(http://docs.aws.amazon.com/AmazonS3/latest/dev/UsingMetadata.html#object-keys)
in the I<Amazon S3 Developer Guide>.

For more information about custom vocabularies in Amazon Transcribe
Medical, see Medical Custom Vocabularies
(http://docs.aws.amazon.com/transcribe/latest/dg/how-it-works.html#how-vocabulary).



=head2 B<REQUIRED> VocabularyName => Str

The name of the vocabulary to update. The name is case sensitive. If
you try to update a vocabulary with the same name as a vocabulary
you've already made, you get a C<ConflictException> error.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateMedicalVocabulary in L<Paws::Transcribe>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

