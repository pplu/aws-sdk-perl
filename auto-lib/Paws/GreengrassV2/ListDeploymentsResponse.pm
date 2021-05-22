
package Paws::GreengrassV2::ListDeploymentsResponse;
  use Moose;
  has Deployments => (is => 'ro', isa => 'ArrayRef[Paws::GreengrassV2::Deployment]', traits => ['NameInRequest'], request_name => 'deployments');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GreengrassV2::ListDeploymentsResponse

=head1 ATTRIBUTES


=head2 Deployments => ArrayRef[L<Paws::GreengrassV2::Deployment>]

A list that summarizes each deployment.


=head2 NextToken => Str

The token for the next set of results, or null if there are no
additional results.


=head2 _request_id => Str


=cut

