
package Paws::IAM::ListVirtualMFADevicesResponse;
  use Moose;
  has IsTruncated => (is => 'ro', isa => 'Bool');
  has Marker => (is => 'ro', isa => 'Str');
  has VirtualMFADevices => (is => 'ro', isa => 'ArrayRef[Paws::IAM::VirtualMFADevice]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::ListVirtualMFADevicesResponse

=head1 ATTRIBUTES


=head2 IsTruncated => Bool

A flag that indicates whether there are more items to return. If your
results were truncated, you can make a subsequent pagination request
using the C<Marker> request parameter to retrieve more items. Note that
IAM might return fewer than the C<MaxItems> number of results even when
there are more results available. We recommend that you check
C<IsTruncated> after every call to ensure that you receive all your
results.


=head2 Marker => Str

When C<IsTruncated> is C<true>, this element is present and contains
the value to use for the C<Marker> parameter in a subsequent pagination
request.


=head2 B<REQUIRED> VirtualMFADevices => ArrayRef[L<Paws::IAM::VirtualMFADevice>]

The list of virtual MFA devices in the current account that match the
C<AssignmentStatus> value that was passed in the request.


=head2 _request_id => Str


=cut

