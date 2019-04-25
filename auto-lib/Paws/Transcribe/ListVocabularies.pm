
package Paws::Transcribe::ListVocabularies;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NameContains => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has StateEquals => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListVocabularies');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Transcribe::ListVocabulariesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transcribe::ListVocabularies - Arguments for method ListVocabularies on L<Paws::Transcribe>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListVocabularies on the
L<Amazon Transcribe Service|Paws::Transcribe> service. Use the attributes of this class
as arguments to method ListVocabularies.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListVocabularies.

=head1 SYNOPSIS

    my $transcribe = Paws->service('Transcribe');
    my $ListVocabulariesResponse = $transcribe->ListVocabularies(
      MaxResults   => 1,                     # OPTIONAL
      NameContains => 'MyVocabularyName',    # OPTIONAL
      NextToken    => 'MyNextToken',         # OPTIONAL
      StateEquals  => 'PENDING',             # OPTIONAL
    );

    # Results:
    my $NextToken    = $ListVocabulariesResponse->NextToken;
    my $Status       = $ListVocabulariesResponse->Status;
    my $Vocabularies = $ListVocabulariesResponse->Vocabularies;

    # Returns a L<Paws::Transcribe::ListVocabulariesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/transcribe/ListVocabularies>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of vocabularies to return in the response. If there
are fewer results in the list, this response contains only the actual
results.



=head2 NameContains => Str

When specified, the vocabularies returned in the list are limited to
vocabularies whose name contains the specified string. The search is
case-insensitive, C<ListVocabularies> will return both "vocabularyname"
and "VocabularyName" in the response list.



=head2 NextToken => Str

If the result of the previous request to C<ListVocabularies> was
truncated, include the C<NextToken> to fetch the next set of jobs.



=head2 StateEquals => Str

When specified, only returns vocabularies with the C<VocabularyState>
field equal to the specified state.

Valid values are: C<"PENDING">, C<"READY">, C<"FAILED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListVocabularies in L<Paws::Transcribe>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

