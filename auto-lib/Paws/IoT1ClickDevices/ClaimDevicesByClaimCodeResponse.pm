
package Paws::IoT1ClickDevices::ClaimDevicesByClaimCodeResponse;
  use Moose;
  has ClaimCode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'claimCode');
  has Total => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'total');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT1ClickDevices::ClaimDevicesByClaimCodeResponse

=head1 ATTRIBUTES


=head2 ClaimCode => Str

The claim code provided by the device manufacturer.


=head2 Total => Int

The total number of devices associated with the claim code that has
been processed in the claim request.


=head2 _request_id => Str


=cut

