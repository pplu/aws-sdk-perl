
package Paws::OpsWorks::CreateInstanceResult;
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::CreateInstanceResult

=head1 ATTRIBUTES


=head2 InstanceId => Str

The instance ID.


=head2 _request_id => Str


=cut

1;