
package Paws::Transcribe::ListMedicalVocabularies;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NameContains => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has StateEquals => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListMedicalVocabularies');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Transcribe::ListMedicalVocabulariesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transcribe::ListMedicalVocabularies - Arguments for method ListMedicalVocabularies on L<Paws::Transcribe>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListMedicalVocabularies on the
L<Amazon Transcribe Service|Paws::Transcribe> service. Use the attributes of this class
as arguments to method ListMedicalVocabularies.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListMedicalVocabularies.

=head1 SYNOPSIS

    my $transcribe = Paws->service('Transcribe');
    my $ListMedicalVocabulariesResponse = $transcribe->ListMedicalVocabularies(
      MaxResults   => 1,                     # OPTIONAL
      NameContains => 'MyVocabularyName',    # OPTIONAL
      NextToken    => 'MyNextToken',         # OPTIONAL
      StateEquals  => 'PENDING',             # OPTIONAL
    );

    # Results:
    my $NextToken    = $ListMedicalVocabulariesResponse->NextToken;
    my $Status       = $ListMedicalVocabulariesResponse->Status;
    my $Vocabularies = $ListMedicalVocabulariesResponse->Vocabularies;

    # Returns a L<Paws::Transcribe::ListMedicalVocabulariesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/transcribe/ListMedicalVocabularies>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of vocabularies to return in the response.



=head2 NameContains => Str

Returns vocabularies whose names contain the specified string. The
search is not case sensitive. C<ListMedicalVocabularies> returns both
"C<vocabularyname>" and "C<VocabularyName>".



=head2 NextToken => Str

If the result of your previous request to C<ListMedicalVocabularies>
was truncated, include the C<NextToken> to fetch the next set of
vocabularies.



=head2 StateEquals => Str

When specified, returns only vocabularies with the C<VocabularyState>
equal to the specified vocabulary state. Use this field to see which
vocabularies are ready for your medical transcription jobs.

Valid values are: C<"PENDING">, C<"READY">, C<"FAILED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListMedicalVocabularies in L<Paws::Transcribe>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

