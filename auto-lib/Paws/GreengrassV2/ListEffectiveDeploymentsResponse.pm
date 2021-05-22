
package Paws::GreengrassV2::ListEffectiveDeploymentsResponse;
  use Moose;
  has EffectiveDeployments => (is => 'ro', isa => 'ArrayRef[Paws::GreengrassV2::EffectiveDeployment]', traits => ['NameInRequest'], request_name => 'effectiveDeployments');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GreengrassV2::ListEffectiveDeploymentsResponse

=head1 ATTRIBUTES


=head2 EffectiveDeployments => ArrayRef[L<Paws::GreengrassV2::EffectiveDeployment>]

A list that summarizes each deployment on the core device.


=head2 NextToken => Str

The token for the next set of results, or null if there are no
additional results.


=head2 _request_id => Str


=cut

