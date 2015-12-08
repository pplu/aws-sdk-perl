
package Paws::EC2::AllocateHostsResult;
  use Moose;
  has HostIds => (is => 'ro', isa => 'ArrayRef[Str]', xmlname => 'hostIdSet', traits => ['Unwrapped',]);

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::AllocateHostsResult

=head1 ATTRIBUTES


=head2 HostIds => ArrayRef[Str]

  The ID of the allocated Dedicated host. This is used when you want to
launch an instance onto a specific host.


=cut

