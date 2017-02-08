
package Paws::EC2::TerminateInstancesResult;
  use Moose;
  has TerminatingInstances => (is => 'ro', isa => 'ArrayRef[Paws::EC2::InstanceStateChange]', request_name => 'instancesSet', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::TerminateInstancesResult

=head1 ATTRIBUTES


=head2 TerminatingInstances => ArrayRef[L<Paws::EC2::InstanceStateChange>]

Information about one or more terminated instances.


=head2 _request_id => Str


=cut

