
package Paws::Greengrass::ListBulkDeploymentDetailedReportsResponse;
  use Moose;
  has Deployments => (is => 'ro', isa => 'ArrayRef[Paws::Greengrass::BulkDeploymentResult]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::ListBulkDeploymentDetailedReportsResponse

=head1 ATTRIBUTES


=head2 Deployments => ArrayRef[L<Paws::Greengrass::BulkDeploymentResult>]

A list of the individual group deployments in the bulk deployment
operation.


=head2 NextToken => Str

The token for the next set of results, or ''null'' if there are no
additional results.


=head2 _request_id => Str


=cut

