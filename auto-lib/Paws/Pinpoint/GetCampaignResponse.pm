
package Paws::Pinpoint::GetCampaignResponse;
  use Moo;  use MooX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'CampaignResponse');
  use Types::Standard qw/Str/;
  use Paws::Pinpoint::Types qw/Pinpoint_CampaignResponse/;
  has CampaignResponse => (is => 'ro', isa => Pinpoint_CampaignResponse, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'CampaignResponse' => 1
                  },
  'types' => {
               'CampaignResponse' => {
                                       'type' => 'Pinpoint_CampaignResponse',
                                       'class' => 'Paws::Pinpoint::CampaignResponse'
                                     },
               '_request_id' => {
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

Paws::Pinpoint::GetCampaignResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CampaignResponse => Pinpoint_CampaignResponse




=head2 _request_id => Str


=cut

