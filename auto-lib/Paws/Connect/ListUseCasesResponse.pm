
package Paws::Connect::ListUseCasesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has UseCaseSummaryList => (is => 'ro', isa => 'ArrayRef[Paws::Connect::UseCase]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::ListUseCasesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If there are additional results, this is the token for the next set of
results.


=head2 UseCaseSummaryList => ArrayRef[L<Paws::Connect::UseCase>]

The use cases.


=head2 _request_id => Str


=cut

