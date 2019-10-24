
package Paws::IoT::GetOTAUpdateResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw/IoT_OTAUpdateInfo/;
  has OtaUpdateInfo => (is => 'ro', isa => IoT_OTAUpdateInfo);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'OtaUpdateInfo' => {
                                    'class' => 'Paws::IoT::OTAUpdateInfo',
                                    'type' => 'IoT_OTAUpdateInfo'
                                  },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'OtaUpdateInfo' => 'otaUpdateInfo'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::GetOTAUpdateResponse

=head1 ATTRIBUTES


=head2 OtaUpdateInfo => IoT_OTAUpdateInfo

The OTA update info.


=head2 _request_id => Str


=cut

