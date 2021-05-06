
package Paws::EC2::AllocateHostsResult;
  use Moose;
  has HostIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'hostIdSet', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::AllocateHostsResult

=head1 ATTRIBUTES


=head2 HostIds => ArrayRef[Str|Undef]

The ID of the allocated Dedicated Host. This is used to launch an
instance onto a specific host.


=head2 _request_id => Str


=cut

