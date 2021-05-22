
package Paws::FIS::ListExperimentsResponse;
  use Moose;
  has Experiments => (is => 'ro', isa => 'ArrayRef[Paws::FIS::ExperimentSummary]', traits => ['NameInRequest'], request_name => 'experiments');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FIS::ListExperimentsResponse

=head1 ATTRIBUTES


=head2 Experiments => ArrayRef[L<Paws::FIS::ExperimentSummary>]

The experiments.


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 _request_id => Str


=cut

