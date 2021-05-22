
package Paws::NimbleStudio::ListEulaAcceptancesResponse;
  use Moose;
  has EulaAcceptances => (is => 'ro', isa => 'ArrayRef[Paws::NimbleStudio::EulaAcceptance]', traits => ['NameInRequest'], request_name => 'eulaAcceptances');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NimbleStudio::ListEulaAcceptancesResponse

=head1 ATTRIBUTES


=head2 EulaAcceptances => ArrayRef[L<Paws::NimbleStudio::EulaAcceptance>]

A collection of EULA acceptances.


=head2 NextToken => Str

The token for the next set of results, or null if there are no more
results.


=head2 _request_id => Str


=cut

