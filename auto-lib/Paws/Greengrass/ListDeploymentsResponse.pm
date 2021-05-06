
package Paws::Greengrass::ListDeploymentsResponse;
  use Moose;
  has Deployments => (is => 'ro', isa => 'ArrayRef[Paws::Greengrass::Deployment]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::ListDeploymentsResponse

=head1 ATTRIBUTES


=head2 Deployments => ArrayRef[L<Paws::Greengrass::Deployment>]

A list of deployments for the requested groups.


=head2 NextToken => Str

The token for the next set of results, or ''null'' if there are no
additional results.


=head2 _request_id => Str


=cut

