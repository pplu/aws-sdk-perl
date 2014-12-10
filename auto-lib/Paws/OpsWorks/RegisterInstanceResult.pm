
package Paws::OpsWorks::RegisterInstanceResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has InstanceId => (is => 'ro', isa => 'Str');

}

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::RegisterInstanceResult

=head1 ATTRIBUTES

=head2 InstanceId => Str

  

The registered instance's AWS OpsWorks ID.











=cut

1;