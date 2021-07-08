
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

The ID of the request. Please provide this ID when contacting AWS
Support for assistance.


=head2 Success => Bool

Is true if the request succeeds and an error otherwise.


=head2 _request_id => Str


=cut

1;