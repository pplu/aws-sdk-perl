
package Paws::OpsWorks::DescribeDeploymentsResult;
  use Moose;
  has Deployments => (is => 'ro', isa => 'ArrayRef[Paws::OpsWorks::Deployment]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::DescribeDeploymentsResult

=head1 ATTRIBUTES


=head2 Deployments => ArrayRef[L<Paws::OpsWorks::Deployment>]

An array of C<Deployment> objects that describe the deployments.


=head2 _request_id => Str


=cut

1;