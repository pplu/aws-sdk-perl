# Generated from default/object.tt
package Paws::Pinpoint::WriteCampaignRequest;
  use Moo;
  use Types::Standard qw/ArrayRef Str Int Bool/;
  use Paws::Pinpoint::Types qw/Pinpoint_MapOf__string Pinpoint_MessageConfiguration Pinpoint_CampaignHook Pinpoint_Schedule Pinpoint_CampaignLimits Pinpoint_WriteTreatmentResource/;
  has AdditionalTreatments => (is => 'ro', isa => ArrayRef[Pinpoint_WriteTreatmentResource]);
  has Description => (is => 'ro', isa => Str);
  has HoldoutPercent => (is => 'ro', isa => Int);
  has Hook => (is => 'ro', isa => Pinpoint_CampaignHook);
  has IsPaused => (is => 'ro', isa => Bool);
  has Limits => (is => 'ro', isa => Pinpoint_CampaignLimits);
  has MessageConfiguration => (is => 'ro', isa => Pinpoint_MessageConfiguration);
  has Name => (is => 'ro', isa => Str);
  has Schedule => (is => 'ro', isa => Pinpoint_Schedule);
  has SegmentId => (is => 'ro', isa => Str);
  has SegmentVersion => (is => 'ro', isa => Int);
  has Tags => (is => 'ro', isa => Pinpoint_MapOf__string);
  has TreatmentDescription => (is => 'ro', isa => Str);
  has TreatmentName => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SegmentVersion' => {
                                     'type' => 'Int'
                                   },
               'SegmentId' => {
                                'type' => 'Str'
                              },
               'HoldoutPercent' => {
                                     'type' => 'Int'
                                   },
               'Limits' => {
                             'class' => 'Paws::Pinpoint::CampaignLimits',
                             'type' => 'Pinpoint_CampaignLimits'
                           },
               'TreatmentDescription' => {
                                           'type' => 'Str'
                                         },
               'IsPaused' => {
                               'type' => 'Bool'
                             },
               'TreatmentName' => {
                                    'type' => 'Str'
                                  },
               'Hook' => {
                           'class' => 'Paws::Pinpoint::CampaignHook',
                           'type' => 'Pinpoint_CampaignHook'
                         },
               'Tags' => {
                           'class' => 'Paws::Pinpoint::MapOf__string',
                           'type' => 'Pinpoint_MapOf__string'
                         },
               'Schedule' => {
                               'class' => 'Paws::Pinpoint::Schedule',
                               'type' => 'Pinpoint_Schedule'
                             },
               'AdditionalTreatments' => {
                                           'class' => 'Paws::Pinpoint::WriteTreatmentResource',
                                           'type' => 'ArrayRef[Pinpoint_WriteTreatmentResource]'
                                         },
               'MessageConfiguration' => {
                                           'class' => 'Paws::Pinpoint::MessageConfiguration',
                                           'type' => 'Pinpoint_MessageConfiguration'
                                         },
               'Description' => {
                                  'type' => 'Str'
                                },
               'Name' => {
                           'type' => 'Str'
                         }
             },
  'NameInRequest' => {
                       'Tags' => 'tags'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::WriteCampaignRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::WriteCampaignRequest object:

  $service_obj->Method(Att1 => { AdditionalTreatments => $value, ..., TreatmentName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::WriteCampaignRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->AdditionalTreatments

=head1 DESCRIPTION

Specifies the configuration and other settings for a campaign.

=head1 ATTRIBUTES


=head2 AdditionalTreatments => ArrayRef[Pinpoint_WriteTreatmentResource]

  An array of requests that defines additional treatments for the
campaign, in addition to the default treatment for the campaign.


=head2 Description => Str

  The custom description of the campaign.


=head2 HoldoutPercent => Int

  The allocated percentage of users (segment members) who shouldn't
receive messages from the campaign.


=head2 Hook => Pinpoint_CampaignHook

  The settings for the AWS Lambda function to use as a code hook for the
campaign.


=head2 IsPaused => Bool

  Specifies whether to pause the campaign. A paused campaign doesn't run
unless you resume it by setting this value to false.


=head2 Limits => Pinpoint_CampaignLimits

  The messaging limits for the campaign.


=head2 MessageConfiguration => Pinpoint_MessageConfiguration

  The message configuration settings for the campaign.


=head2 Name => Str

  The custom name of the campaign.


=head2 Schedule => Pinpoint_Schedule

  The schedule settings for the campaign.


=head2 SegmentId => Str

  The unique identifier for the segment to associate with the campaign.


=head2 SegmentVersion => Int

  The version of the segment to associate with the campaign.


=head2 Tags => Pinpoint_MapOf__string

  A string-to-string map of key-value pairs that defines the tags to
associate with the campaign. Each tag consists of a required tag key
and an associated tag value.


=head2 TreatmentDescription => Str

  The custom description of a variation of the campaign to use for A/B
testing.


=head2 TreatmentName => Str

  The custom name of a variation of the campaign to use for A/B testing.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

