
package Paws::EC2::StopInstancesResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has StoppingInstances => (is => 'ro', isa => 'ArrayRef[Paws::EC2::InstanceStateChange]', traits => ['Unwrapped'], xmlname => 'instancesSet');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::StopInstancesResult

=head1 ATTRIBUTES

=head2 StoppingInstances => ArrayRef[Paws::EC2::InstanceStateChange]

  

Information about one or more stopped instances.











=cut

