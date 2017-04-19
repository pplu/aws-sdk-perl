
package Paws::OpsWorks::RegisterInstanceResult;
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::RegisterInstanceResult

=head1 ATTRIBUTES


=head2 InstanceId => Str

The registered instance's AWS OpsWorks Stacks ID.


=head2 _request_id => Str


=cut

1;