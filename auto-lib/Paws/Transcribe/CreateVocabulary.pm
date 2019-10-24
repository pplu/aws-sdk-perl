# Generated from json/callargs_class.tt

package Paws::Transcribe::CreateVocabulary;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::Transcribe::Types qw//;
  has LanguageCode => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Phrases => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has VocabularyFileUri => (is => 'ro', isa => Str, predicate => 1);
  has VocabularyName => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateVocabulary');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Transcribe::CreateVocabularyResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'VocabularyName' => {
                                     'type' => 'Str'
                                   },
               'VocabularyFileUri' => {
                                        'type' => 'Str'
                                      },
               'Phrases' => {
                              'type' => 'ArrayRef[Str|Undef]'
                            },
               'LanguageCode' => {
                                   'type' => 'Str'
                                 }
             },
  'IsRequired' => {
                    'VocabularyName' => 1,
                    'LanguageCode' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Transcribe::CreateVocabulary - Arguments for method CreateVocabulary on L<Paws::Transcribe>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateVocabulary on the
L<Amazon Transcribe Service|Paws::Transcribe> service. Use the attributes of this class
as arguments to method CreateVocabulary.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateVocabulary.

=head1 SYNOPSIS

    my $transcribe = Paws->service('Transcribe');
    my $CreateVocabularyResponse = $transcribe->CreateVocabulary(
      LanguageCode   => 'en-US',
      VocabularyName => 'MyVocabularyName',
      Phrases        => [
        'MyPhrase', ...    # max: 256
      ],                   # OPTIONAL
      VocabularyFileUri => 'MyUri',    # OPTIONAL
    );

    # Results:
    my $FailureReason    = $CreateVocabularyResponse->FailureReason;
    my $LanguageCode     = $CreateVocabularyResponse->LanguageCode;
    my $LastModifiedTime = $CreateVocabularyResponse->LastModifiedTime;
    my $VocabularyName   = $CreateVocabularyResponse->VocabularyName;
    my $VocabularyState  = $CreateVocabularyResponse->VocabularyState;

    # Returns a L<Paws::Transcribe::CreateVocabularyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/transcribe/CreateVocabulary>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LanguageCode => Str

The language code of the vocabulary entries.

Valid values are: C<"en-US">, C<"es-US">, C<"en-AU">, C<"fr-CA">, C<"en-GB">, C<"de-DE">, C<"pt-BR">, C<"fr-FR">, C<"it-IT">, C<"ko-KR">, C<"es-ES">, C<"en-IN">, C<"hi-IN">, C<"ar-SA">

=head2 Phrases => ArrayRef[Str|Undef]

An array of strings that contains the vocabulary entries.



=head2 VocabularyFileUri => Str

The S3 location of the text file that contains the definition of the
custom vocabulary. The URI must be in the same region as the API
endpoint that you are calling. The general form is

C<https://s3-E<lt>aws-regionE<gt>.amazonaws.com/E<lt>bucket-nameE<gt>/E<lt>keyprefixE<gt>/E<lt>objectkeyE<gt>>

For example:

C<https://s3-us-east-1.amazonaws.com/examplebucket/vocab.txt>

For more information about S3 object names, see Object Keys
(http://docs.aws.amazon.com/AmazonS3/latest/dev/UsingMetadata.html#object-keys)
in the I<Amazon S3 Developer Guide>.

For more information about custom vocabularies, see Custom Vocabularies
(http://docs.aws.amazon.com/transcribe/latest/dg/how-it-works.html#how-vocabulary).



=head2 B<REQUIRED> VocabularyName => Str

The name of the vocabulary. The name must be unique within an AWS
account. The name is case-sensitive.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateVocabulary in L<Paws::Transcribe>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

