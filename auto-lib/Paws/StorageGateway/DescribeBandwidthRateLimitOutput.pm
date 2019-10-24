# Generated from json/callresult_class.tt

package Paws::StorageGateway::DescribeBandwidthRateLimitOutput;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::StorageGateway::Types qw//;
  has AverageDownloadRateLimitInBitsPerSec => (is => 'ro', isa => Int);
  has AverageUploadRateLimitInBitsPerSec => (is => 'ro', isa => Int);
  has GatewayARN => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AverageDownloadRateLimitInBitsPerSec' => {
                                                           'type' => 'Int'
                                                         },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'AverageUploadRateLimitInBitsPerSec' => {
                                                         'type' => 'Int'
                                                       },
               'GatewayARN' => {
                                 'type' => 'Str'
                               }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::DescribeBandwidthRateLimitOutput

=head1 ATTRIBUTES


=head2 AverageDownloadRateLimitInBitsPerSec => Int

The average download bandwidth rate limit in bits per second. This
field does not appear in the response if the download rate limit is not
set.


=head2 AverageUploadRateLimitInBitsPerSec => Int

The average upload bandwidth rate limit in bits per second. This field
does not appear in the response if the upload rate limit is not set.


=head2 GatewayARN => Str




=head2 _request_id => Str


=cut

1;