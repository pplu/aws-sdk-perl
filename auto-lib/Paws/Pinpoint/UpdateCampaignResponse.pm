
package Paws::Pinpoint::UpdateCampaignResponse;
  use Moo;  use MooX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'CampaignResponse');
  use Types::Standard qw/Str/;
  use Paws::Pinpoint::Types qw/Pinpoint_CampaignResponse/;
  has CampaignResponse => (is => 'ro', isa => Pinpoint_CampaignResponse, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CampaignResponse' => {
                                       'class' => 'Paws::Pinpoint::CampaignResponse',
                                       'type' => 'Pinpoint_CampaignResponse'
                                     },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'CampaignResponse' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::UpdateCampaignResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CampaignResponse => Pinpoint_CampaignResponse




=head2 _request_id => Str


=cut

