
package Paws::Transcribe::UpdateVocabulary;
  use Moose;
  has LanguageCode => (is => 'ro', isa => 'Str', required => 1);
  has Phrases => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
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
      LanguageCode => 'en-US',
      Phrases      => [
        'MyPhrase', ...    # max: 256
      ],
      VocabularyName => 'MyVocabularyName',

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

Valid values are: C<"en-US">, C<"es-US">, C<"en-AU">, C<"fr-CA">, C<"en-GB">, C<"de-DE">, C<"pt-BR">, C<"fr-FR">, C<"it-IT">

=head2 B<REQUIRED> Phrases => ArrayRef[Str|Undef]

An array of strings containing the vocabulary entries.



=head2 B<REQUIRED> VocabularyName => Str

The name of the vocabulary to update. The name is case-sensitive.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateVocabulary in L<Paws::Transcribe>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

