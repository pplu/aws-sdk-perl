
package Paws::Transcribe::CreateVocabularyFilter;
  use Moose;
  has LanguageCode => (is => 'ro', isa => 'Str', required => 1);
  has VocabularyFilterFileUri => (is => 'ro', isa => 'Str');
  has VocabularyFilterName => (is => 'ro', isa => 'Str', required => 1);
  has Words => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateVocabularyFilter');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Transcribe::CreateVocabularyFilterResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transcribe::CreateVocabularyFilter - Arguments for method CreateVocabularyFilter on L<Paws::Transcribe>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateVocabularyFilter on the
L<Amazon Transcribe Service|Paws::Transcribe> service. Use the attributes of this class
as arguments to method CreateVocabularyFilter.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateVocabularyFilter.

=head1 SYNOPSIS

    my $transcribe = Paws->service('Transcribe');
    my $CreateVocabularyFilterResponse = $transcribe->CreateVocabularyFilter(
      LanguageCode            => 'en-US',
      VocabularyFilterName    => 'MyVocabularyFilterName',
      VocabularyFilterFileUri => 'MyUri',                    # OPTIONAL
      Words                   => [
        'MyWord', ...                                        # min: 1, max: 256
      ],    # OPTIONAL
    );

    # Results:
    my $LanguageCode     = $CreateVocabularyFilterResponse->LanguageCode;
    my $LastModifiedTime = $CreateVocabularyFilterResponse->LastModifiedTime;
    my $VocabularyFilterName =
      $CreateVocabularyFilterResponse->VocabularyFilterName;

    # Returns a L<Paws::Transcribe::CreateVocabularyFilterResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/transcribe/CreateVocabularyFilter>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LanguageCode => Str

The language code of the words in the vocabulary filter. All words in
the filter must be in the same language. The vocabulary filter can only
be used with transcription jobs in the specified language.

Valid values are: C<"en-US">, C<"es-US">, C<"en-AU">, C<"fr-CA">, C<"en-GB">, C<"de-DE">, C<"pt-BR">, C<"fr-FR">, C<"it-IT">, C<"ko-KR">, C<"es-ES">, C<"en-IN">, C<"hi-IN">, C<"ar-SA">, C<"ru-RU">, C<"zh-CN">, C<"nl-NL">, C<"id-ID">, C<"ta-IN">, C<"fa-IR">, C<"en-IE">, C<"en-AB">, C<"en-WL">, C<"pt-PT">, C<"te-IN">, C<"tr-TR">, C<"de-CH">, C<"he-IL">, C<"ms-MY">, C<"ja-JP">, C<"ar-AE">

=head2 VocabularyFilterFileUri => Str

The Amazon S3 location of a text file used as input to create the
vocabulary filter. Only use characters from the character set defined
for custom vocabularies. For a list of character sets, see Character
Sets for Custom Vocabularies
(https://docs.aws.amazon.com/transcribe/latest/dg/how-vocabulary.html#charsets).

The specified file must be less than 50 KB of UTF-8 characters.

If you provide the location of a list of words in the
C<VocabularyFilterFileUri> parameter, you can't use the C<Words>
parameter.



=head2 B<REQUIRED> VocabularyFilterName => Str

The vocabulary filter name. The name must be unique within the account
that contains it.



=head2 Words => ArrayRef[Str|Undef]

The words to use in the vocabulary filter. Only use characters from the
character set defined for custom vocabularies. For a list of character
sets, see Character Sets for Custom Vocabularies
(https://docs.aws.amazon.com/transcribe/latest/dg/how-vocabulary.html#charsets).

If you provide a list of words in the C<Words> parameter, you can't use
the C<VocabularyFilterFileUri> parameter.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateVocabularyFilter in L<Paws::Transcribe>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

