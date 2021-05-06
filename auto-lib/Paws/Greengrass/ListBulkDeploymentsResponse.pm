
package Paws::Greengrass::ListBulkDeploymentsResponse;
  use Moose;
  has BulkDeployments => (is => 'ro', isa => 'ArrayRef[Paws::Greengrass::BulkDeployment]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::ListBulkDeploymentsResponse

=head1 ATTRIBUTES


=head2 BulkDeployments => ArrayRef[L<Paws::Greengrass::BulkDeployment>]

A list of bulk deployments.


=head2 NextToken => Str

The token for the next set of results, or ''null'' if there are no
additional results.


=head2 _request_id => Str


=cut

