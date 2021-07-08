
package Paws::Transcribe::CreateMedicalVocabulary;
  use Moose;
  has LanguageCode => (is => 'ro', isa => 'Str', required => 1);
  has VocabularyFileUri => (is => 'ro', isa => 'Str', required => 1);
  has VocabularyName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateMedicalVocabulary');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Transcribe::CreateMedicalVocabularyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transcribe::CreateMedicalVocabulary - Arguments for method CreateMedicalVocabulary on L<Paws::Transcribe>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateMedicalVocabulary on the
L<Amazon Transcribe Service|Paws::Transcribe> service. Use the attributes of this class
as arguments to method CreateMedicalVocabulary.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateMedicalVocabulary.

=head1 SYNOPSIS

    my $transcribe = Paws->service('Transcribe');
    my $CreateMedicalVocabularyResponse = $transcribe->CreateMedicalVocabulary(
      LanguageCode      => 'af-ZA',
      VocabularyFileUri => 'MyUri',
      VocabularyName    => 'MyVocabularyName',

    );

    # Results:
    my $FailureReason    = $CreateMedicalVocabularyResponse->FailureReason;
    my $LanguageCode     = $CreateMedicalVocabularyResponse->LanguageCode;
    my $LastModifiedTime = $CreateMedicalVocabularyResponse->LastModifiedTime;
    my $VocabularyName   = $CreateMedicalVocabularyResponse->VocabularyName;
    my $VocabularyState  = $CreateMedicalVocabularyResponse->VocabularyState;

    # Returns a L<Paws::Transcribe::CreateMedicalVocabularyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/transcribe/CreateMedicalVocabulary>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LanguageCode => Str

The language code for the language used for the entries in your custom
vocabulary. The language code of your custom vocabulary must match the
language code of your transcription job. US English (en-US) is the only
language code available for Amazon Transcribe Medical.

Valid values are: C<"af-ZA">, C<"ar-AE">, C<"ar-SA">, C<"cy-GB">, C<"da-DK">, C<"de-CH">, C<"de-DE">, C<"en-AB">, C<"en-AU">, C<"en-GB">, C<"en-IE">, C<"en-IN">, C<"en-US">, C<"en-WL">, C<"es-ES">, C<"es-US">, C<"fa-IR">, C<"fr-CA">, C<"fr-FR">, C<"ga-IE">, C<"gd-GB">, C<"he-IL">, C<"hi-IN">, C<"id-ID">, C<"it-IT">, C<"ja-JP">, C<"ko-KR">, C<"ms-MY">, C<"nl-NL">, C<"pt-BR">, C<"pt-PT">, C<"ru-RU">, C<"ta-IN">, C<"te-IN">, C<"tr-TR">, C<"zh-CN">

=head2 B<REQUIRED> VocabularyFileUri => Str

The location in Amazon S3 of the text file you use to define your
custom vocabulary. The URI must be in the same AWS Region as the
resource that you're calling. Enter information about your
C<VocabularyFileUri> in the following format:

C<https://s3.E<lt>aws-regionE<gt>.amazonaws.com/E<lt>bucket-nameE<gt>/E<lt>keyprefixE<gt>/E<lt>objectkeyE<gt>>

The following is an example URI for a vocabulary file that is stored in
Amazon S3:

C<https://s3.us-east-1.amazonaws.com/AWSDOC-EXAMPLE-BUCKET/vocab.txt>

For more information about Amazon S3 object names, see Object Keys
(http://docs.aws.amazon.com/AmazonS3/latest/dev/UsingMetadata.html#object-keys)
in the I<Amazon S3 Developer Guide>.

For more information about custom vocabularies, see Medical Custom
Vocabularies
(http://docs.aws.amazon.com/transcribe/latest/dg/how-it-works.html#how-vocabulary-med).



=head2 B<REQUIRED> VocabularyName => Str

The name of the custom vocabulary. This case-sensitive name must be
unique within an AWS account. If you try to create a vocabulary with
the same name as a previous vocabulary, you get a C<ConflictException>
error.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateMedicalVocabulary in L<Paws::Transcribe>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

