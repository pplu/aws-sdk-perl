
package Paws::Transcribe::UpdateVocabularyFilter;
  use Moose;
  has VocabularyFilterFileUri => (is => 'ro', isa => 'Str');
  has VocabularyFilterName => (is => 'ro', isa => 'Str', required => 1);
  has Words => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateVocabularyFilter');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Transcribe::UpdateVocabularyFilterResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transcribe::UpdateVocabularyFilter - Arguments for method UpdateVocabularyFilter on L<Paws::Transcribe>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateVocabularyFilter on the
L<Amazon Transcribe Service|Paws::Transcribe> service. Use the attributes of this class
as arguments to method UpdateVocabularyFilter.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateVocabularyFilter.

=head1 SYNOPSIS

    my $transcribe = Paws->service('Transcribe');
    my $UpdateVocabularyFilterResponse = $transcribe->UpdateVocabularyFilter(
      VocabularyFilterName    => 'MyVocabularyFilterName',
      VocabularyFilterFileUri => 'MyUri',                    # OPTIONAL
      Words                   => [
        'MyWord', ...                                        # min: 1, max: 256
      ],                                                     # OPTIONAL
    );

    # Results:
    my $LanguageCode     = $UpdateVocabularyFilterResponse->LanguageCode;
    my $LastModifiedTime = $UpdateVocabularyFilterResponse->LastModifiedTime;
    my $VocabularyFilterName =
      $UpdateVocabularyFilterResponse->VocabularyFilterName;

    # Returns a L<Paws::Transcribe::UpdateVocabularyFilterResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/transcribe/UpdateVocabularyFilter>

=head1 ATTRIBUTES


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

The name of the vocabulary filter to update.



=head2 Words => ArrayRef[Str|Undef]

The words to use in the vocabulary filter. Only use characters from the
character set defined for custom vocabularies. For a list of character
sets, see Character Sets for Custom Vocabularies
(https://docs.aws.amazon.com/transcribe/latest/dg/how-vocabulary.html#charsets).

If you provide a list of words in the C<Words> parameter, you can't use
the C<VocabularyFilterFileUri> parameter.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateVocabularyFilter in L<Paws::Transcribe>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

