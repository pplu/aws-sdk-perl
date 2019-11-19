
package Paws::Pinpoint::CampaignsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Pinpoint::Types qw/Pinpoint_CampaignResponse/;
  has Item => (is => 'ro', isa => ArrayRef[Pinpoint_CampaignResponse], required => 1);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Item' => 1
                  },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Item' => {
                           'class' => 'Paws::Pinpoint::CampaignResponse',
                           'type' => 'ArrayRef[Pinpoint_CampaignResponse]'
                         },
               'NextToken' => {
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

Paws::Pinpoint::CampaignsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Item => ArrayRef[Pinpoint_CampaignResponse]

An array of responses, one for each campaign that's associated with the
application.


=head2 NextToken => Str

The string to use in a subsequent request to get the next page of
results in a paginated response. This value is null if there are no
additional pages.


=head2 _request_id => Str


=cut

