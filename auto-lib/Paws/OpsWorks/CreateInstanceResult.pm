
package Paws::OpsWorks::CreateInstanceResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has InstanceId => (is => 'ro', isa => 'Str');

}

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::CreateInstanceResult

=head1 ATTRIBUTES

=head2 InstanceId => Str

  

The instance ID.











=cut

1;