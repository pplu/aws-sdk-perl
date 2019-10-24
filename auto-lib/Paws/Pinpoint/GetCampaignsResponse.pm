
package Paws::Pinpoint::GetCampaignsResponse;
  use Moo;  use MooX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'CampaignsResponse');
  use Types::Standard qw/Str/;
  use Paws::Pinpoint::Types qw/Pinpoint_CampaignsResponse/;
  has CampaignsResponse => (is => 'ro', isa => Pinpoint_CampaignsResponse, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'CampaignsResponse' => {
                                        'class' => 'Paws::Pinpoint::CampaignsResponse',
                                        'type' => 'Pinpoint_CampaignsResponse'
                                      }
             },
  'IsRequired' => {
                    'CampaignsResponse' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::GetCampaignsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CampaignsResponse => Pinpoint_CampaignsResponse




=head2 _request_id => Str


=cut

