
package Paws::IoT1ClickDevices::ClaimDevicesByClaimCodeResponse;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::IoT1ClickDevices::Types qw//;
  has ClaimCode => (is => 'ro', isa => Str);
  has Total => (is => 'ro', isa => Int);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'ClaimCode' => 'claimCode',
                       'Total' => 'total'
                     },
  'types' => {
               'Total' => {
                            'type' => 'Int'
                          },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ClaimCode' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }

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

