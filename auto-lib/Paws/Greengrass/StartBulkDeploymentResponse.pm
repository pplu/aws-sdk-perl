
package Paws::Greengrass::StartBulkDeploymentResponse;
  use Moose;
  has BulkDeploymentArn => (is => 'ro', isa => 'Str');
  has BulkDeploymentId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::StartBulkDeploymentResponse

=head1 ATTRIBUTES


=head2 BulkDeploymentArn => Str

The ARN of the bulk deployment.


=head2 BulkDeploymentId => Str

The ID of the bulk deployment.


=head2 _request_id => Str


=cut

