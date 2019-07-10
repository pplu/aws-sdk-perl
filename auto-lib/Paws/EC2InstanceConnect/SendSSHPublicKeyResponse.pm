
package Paws::EC2InstanceConnect::SendSSHPublicKeyResponse;
  use Moose;
  has RequestId => (is => 'ro', isa => 'Str');
  has Success => (is => 'ro', isa => 'Bool');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::EC2InstanceConnect::SendSSHPublicKeyResponse

=head1 ATTRIBUTES


=head2 RequestId => Str

The request ID as logged by EC2 Connect. Please provide this when
contacting AWS Support.


=head2 Success => Bool

Indicates request success.


=head2 _request_id => Str


=cut

1;