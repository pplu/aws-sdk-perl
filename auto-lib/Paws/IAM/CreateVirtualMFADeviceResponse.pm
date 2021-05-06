
package Paws::IAM::CreateVirtualMFADeviceResponse;
  use Moose;
  has VirtualMFADevice => (is => 'ro', isa => 'Paws::IAM::VirtualMFADevice', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::CreateVirtualMFADeviceResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> VirtualMFADevice => L<Paws::IAM::VirtualMFADevice>

A structure containing details about the new virtual MFA device.


=head2 _request_id => Str


=cut

