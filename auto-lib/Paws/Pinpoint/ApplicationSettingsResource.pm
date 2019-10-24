
package Paws::Pinpoint::ApplicationSettingsResource;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Pinpoint::Types qw/Pinpoint_CampaignHook Pinpoint_QuietTime Pinpoint_CampaignLimits/;
  has ApplicationId => (is => 'ro', isa => Str, required => 1);
  has CampaignHook => (is => 'ro', isa => Pinpoint_CampaignHook);
  has LastModifiedDate => (is => 'ro', isa => Str);
  has Limits => (is => 'ro', isa => Pinpoint_CampaignLimits);
  has QuietTime => (is => 'ro', isa => Pinpoint_QuietTime);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ApplicationId' => {
                                    'type' => 'Str'
                                  },
               'Limits' => {
                             'class' => 'Paws::Pinpoint::CampaignLimits',
                             'type' => 'Pinpoint_CampaignLimits'
                           },
               'LastModifiedDate' => {
                                       'type' => 'Str'
                                     },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'QuietTime' => {
                                'class' => 'Paws::Pinpoint::QuietTime',
                                'type' => 'Pinpoint_QuietTime'
                              },
               'CampaignHook' => {
                                   'class' => 'Paws::Pinpoint::CampaignHook',
                                   'type' => 'Pinpoint_CampaignHook'
                                 }
             },
  'IsRequired' => {
                    'ApplicationId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::ApplicationSettingsResource

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The unique identifier for the application. This identifier is displayed
as the B<Project ID> on the Amazon Pinpoint console.


=head2 CampaignHook => Pinpoint_CampaignHook

The settings for the AWS Lambda function to use by default as a code
hook for campaigns in the application.


=head2 LastModifiedDate => Str

The date and time, in ISO 8601 format, when the application's settings
were last modified.


=head2 Limits => Pinpoint_CampaignLimits

The default sending limits for campaigns in the application.


=head2 QuietTime => Pinpoint_QuietTime

The default quiet time for campaigns in the application. Quiet time is
a specific time range when campaigns don't send messages to endpoints,
if all the following conditions are met:

=over

=item *

The EndpointDemographic.Timezone property of the endpoint is set to a
valid value.

=item *

The current time in the endpoint's time zone is later than or equal to
the time specified by the QuietTime.Start property for the application
(or a campaign that has custom quiet time settings).

=item *

The current time in the endpoint's time zone is earlier than or equal
to the time specified by the QuietTime.End property for the application
(or a campaign that has custom quiet time settings).

=back

If any of the preceding conditions isn't met, the endpoint will receive
messages from a campaign, even if quiet time is enabled.


=head2 _request_id => Str


=cut

