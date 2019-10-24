
package Paws::Pinpoint::CampaignResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Int Bool/;
  use Paws::Pinpoint::Types qw/Pinpoint_MapOf__string Pinpoint_MessageConfiguration Pinpoint_CampaignHook Pinpoint_TreatmentResource Pinpoint_Schedule Pinpoint_CampaignState Pinpoint_CampaignLimits/;
  has AdditionalTreatments => (is => 'ro', isa => ArrayRef[Pinpoint_TreatmentResource]);
  has ApplicationId => (is => 'ro', isa => Str, required => 1);
  has Arn => (is => 'ro', isa => Str, required => 1);
  has CreationDate => (is => 'ro', isa => Str, required => 1);
  has DefaultState => (is => 'ro', isa => Pinpoint_CampaignState);
  has Description => (is => 'ro', isa => Str);
  has HoldoutPercent => (is => 'ro', isa => Int);
  has Hook => (is => 'ro', isa => Pinpoint_CampaignHook);
  has Id => (is => 'ro', isa => Str, required => 1);
  has IsPaused => (is => 'ro', isa => Bool);
  has LastModifiedDate => (is => 'ro', isa => Str, required => 1);
  has Limits => (is => 'ro', isa => Pinpoint_CampaignLimits);
  has MessageConfiguration => (is => 'ro', isa => Pinpoint_MessageConfiguration);
  has Name => (is => 'ro', isa => Str);
  has Schedule => (is => 'ro', isa => Pinpoint_Schedule);
  has SegmentId => (is => 'ro', isa => Str, required => 1);
  has SegmentVersion => (is => 'ro', isa => Int, required => 1);
  has State => (is => 'ro', isa => Pinpoint_CampaignState);
  has Tags => (is => 'ro', isa => Pinpoint_MapOf__string);
  has TreatmentDescription => (is => 'ro', isa => Str);
  has TreatmentName => (is => 'ro', isa => Str);
  has Version => (is => 'ro', isa => Int);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'State' => {
                            'class' => 'Paws::Pinpoint::CampaignState',
                            'type' => 'Pinpoint_CampaignState'
                          },
               'SegmentVersion' => {
                                     'type' => 'Int'
                                   },
               'ApplicationId' => {
                                    'type' => 'Str'
                                  },
               'SegmentId' => {
                                'type' => 'Str'
                              },
               'Limits' => {
                             'class' => 'Paws::Pinpoint::CampaignLimits',
                             'type' => 'Pinpoint_CampaignLimits'
                           },
               'LastModifiedDate' => {
                                       'type' => 'Str'
                                     },
               'HoldoutPercent' => {
                                     'type' => 'Int'
                                   },
               'IsPaused' => {
                               'type' => 'Bool'
                             },
               'CreationDate' => {
                                   'type' => 'Str'
                                 },
               'Hook' => {
                           'class' => 'Paws::Pinpoint::CampaignHook',
                           'type' => 'Pinpoint_CampaignHook'
                         },
               'Arn' => {
                          'type' => 'Str'
                        },
               'MessageConfiguration' => {
                                           'class' => 'Paws::Pinpoint::MessageConfiguration',
                                           'type' => 'Pinpoint_MessageConfiguration'
                                         },
               'Id' => {
                         'type' => 'Str'
                       },
               'Version' => {
                              'type' => 'Int'
                            },
               'TreatmentDescription' => {
                                           'type' => 'Str'
                                         },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'TreatmentName' => {
                                    'type' => 'Str'
                                  },
               'Tags' => {
                           'class' => 'Paws::Pinpoint::MapOf__string',
                           'type' => 'Pinpoint_MapOf__string'
                         },
               'AdditionalTreatments' => {
                                           'class' => 'Paws::Pinpoint::TreatmentResource',
                                           'type' => 'ArrayRef[Pinpoint_TreatmentResource]'
                                         },
               'Schedule' => {
                               'class' => 'Paws::Pinpoint::Schedule',
                               'type' => 'Pinpoint_Schedule'
                             },
               'Description' => {
                                  'type' => 'Str'
                                },
               'DefaultState' => {
                                   'class' => 'Paws::Pinpoint::CampaignState',
                                   'type' => 'Pinpoint_CampaignState'
                                 },
               'Name' => {
                           'type' => 'Str'
                         }
             },
  'NameInRequest' => {
                       'Tags' => 'tags'
                     },
  'IsRequired' => {
                    'ApplicationId' => 1,
                    'SegmentId' => 1,
                    'LastModifiedDate' => 1,
                    'Id' => 1,
                    'CreationDate' => 1,
                    'Arn' => 1,
                    'SegmentVersion' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::CampaignResponse

=head1 ATTRIBUTES


=head2 AdditionalTreatments => ArrayRef[Pinpoint_TreatmentResource]

An array of responses, one for each treatment that you defined for the
campaign, in addition to the default treatment.


=head2 B<REQUIRED> ApplicationId => Str

The unique identifier for the application that the campaign applies to.


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the campaign.


=head2 B<REQUIRED> CreationDate => Str

The date, ISO 8601 format, when the campaign was created.


=head2 DefaultState => Pinpoint_CampaignState

The current status of the campaign's default treatment. This value
exists only for campaigns that have more than one treatment, to support
A/B testing.


=head2 Description => Str

The custom description of the campaign.


=head2 HoldoutPercent => Int

The allocated percentage of users (segment members) who shouldn't
receive messages from the campaign.


=head2 Hook => Pinpoint_CampaignHook

The settings for the AWS Lambda function to use as a code hook for the
campaign.


=head2 B<REQUIRED> Id => Str

The unique identifier for the campaign.


=head2 IsPaused => Bool

Specifies whether the campaign is paused. A paused campaign doesn't run
unless you resume it by changing this value to false.


=head2 B<REQUIRED> LastModifiedDate => Str

The date, in ISO 8601 format, when the campaign was last modified.


=head2 Limits => Pinpoint_CampaignLimits

The messaging limits for the campaign.


=head2 MessageConfiguration => Pinpoint_MessageConfiguration

The message configuration settings for the campaign.


=head2 Name => Str

The name of the campaign.


=head2 Schedule => Pinpoint_Schedule

The schedule settings for the campaign.


=head2 B<REQUIRED> SegmentId => Str

The unique identifier for the segment that's associated with the
campaign.


=head2 B<REQUIRED> SegmentVersion => Int

The version number of the segment that's associated with the campaign.


=head2 State => Pinpoint_CampaignState

The current status of the campaign.


=head2 Tags => Pinpoint_MapOf__string

A string-to-string map of key-value pairs that identifies the tags that
are associated with the campaign. Each tag consists of a required tag
key and an associated tag value.


=head2 TreatmentDescription => Str

The custom description of a variation of the campaign that's used for
A/B testing.


=head2 TreatmentName => Str

The custom name of a variation of the campaign that's used for A/B
testing.


=head2 Version => Int

The version number of the campaign.


=head2 _request_id => Str


=cut

