
package Paws::PinpointEmail::ListDomainDeliverabilityCampaignsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::PinpointEmail::Types qw/PinpointEmail_DomainDeliverabilityCampaign/;
  has DomainDeliverabilityCampaigns => (is => 'ro', isa => ArrayRef[PinpointEmail_DomainDeliverabilityCampaign], required => 1);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DomainDeliverabilityCampaigns' => {
                                                    'class' => 'Paws::PinpointEmail::DomainDeliverabilityCampaign',
                                                    'type' => 'ArrayRef[PinpointEmail_DomainDeliverabilityCampaign]'
                                                  },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'DomainDeliverabilityCampaigns' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointEmail::ListDomainDeliverabilityCampaignsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainDeliverabilityCampaigns => ArrayRef[PinpointEmail_DomainDeliverabilityCampaign]

An array of responses, one for each campaign that used the domain to
send email during the specified time range.


=head2 NextToken => Str

A token thatE<rsquo>s returned from a previous call to the
C<ListDomainDeliverabilityCampaigns> operation. This token indicates
the position of the campaign in the list of campaigns.


=head2 _request_id => Str


=cut

