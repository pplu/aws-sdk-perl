
package Paws::OpsWorks::RegisterEcsClusterResult;
  use Moose;
  has EcsClusterArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::RegisterEcsClusterResult

=head1 ATTRIBUTES


=head2 EcsClusterArn => Str

The cluster's ARN.


=head2 _request_id => Str


=cut

1;