
package Paws::Pinpoint::CampaignResponse;
  use Moose;
  has AdditionalTreatments => (is => 'ro', isa => 'ArrayRef[Paws::Pinpoint::TreatmentResource]');
  has ApplicationId => (is => 'ro', isa => 'Str', required => 1);
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has CreationDate => (is => 'ro', isa => 'Str', required => 1);
  has DefaultState => (is => 'ro', isa => 'Paws::Pinpoint::CampaignState');
  has Description => (is => 'ro', isa => 'Str');
  has HoldoutPercent => (is => 'ro', isa => 'Int');
  has Hook => (is => 'ro', isa => 'Paws::Pinpoint::CampaignHook');
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has IsPaused => (is => 'ro', isa => 'Bool');
  has LastModifiedDate => (is => 'ro', isa => 'Str', required => 1);
  has Limits => (is => 'ro', isa => 'Paws::Pinpoint::CampaignLimits');
  has MessageConfiguration => (is => 'ro', isa => 'Paws::Pinpoint::MessageConfiguration');
  has Name => (is => 'ro', isa => 'Str');
  has Schedule => (is => 'ro', isa => 'Paws::Pinpoint::Schedule');
  has SegmentId => (is => 'ro', isa => 'Str', required => 1);
  has SegmentVersion => (is => 'ro', isa => 'Int', required => 1);
  has State => (is => 'ro', isa => 'Paws::Pinpoint::CampaignState');
  has Tags => (is => 'ro', isa => 'Paws::Pinpoint::MapOf__string', traits => ['NameInRequest'], request_name => 'tags');
  has TreatmentDescription => (is => 'ro', isa => 'Str');
  has TreatmentName => (is => 'ro', isa => 'Str');
  has Version => (is => 'ro', isa => 'Int');

<<<<<<< HEAD
  has _request_id => (is => 'ro', isa => 'Str');
=======
>>>>>>> 186ed52fd2853f25b0e1410d04060db03e2f042c
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::CampaignResponse

=head1 ATTRIBUTES


=head2 AdditionalTreatments => ArrayRef[L<Paws::Pinpoint::TreatmentResource>]

An array of responses, one for each treatment that you defined for the
campaign, in addition to the default treatment.


=head2 B<REQUIRED> ApplicationId => Str

The unique identifier for the application that the campaign applies to.


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the campaign.


=head2 B<REQUIRED> CreationDate => Str

The date, ISO 8601 format, when the campaign was created.


=head2 DefaultState => L<Paws::Pinpoint::CampaignState>

The current status of the campaign's default treatment. This value
exists only for campaigns that have more than one treatment, to support
A/B testing.


=head2 Description => Str

The custom description of the campaign.


=head2 HoldoutPercent => Int

The allocated percentage of users (segment members) who shouldn't
receive messages from the campaign.


=head2 Hook => L<Paws::Pinpoint::CampaignHook>

The settings for the AWS Lambda function to use as a code hook for the
campaign.


=head2 B<REQUIRED> Id => Str

The unique identifier for the campaign.


=head2 IsPaused => Bool

Specifies whether the campaign is paused. A paused campaign doesn't run
unless you resume it by changing this value to false.


=head2 B<REQUIRED> LastModifiedDate => Str

The date, in ISO 8601 format, when the campaign was last modified.


=head2 Limits => L<Paws::Pinpoint::CampaignLimits>

The messaging limits for the campaign.


=head2 MessageConfiguration => L<Paws::Pinpoint::MessageConfiguration>

The message configuration settings for the campaign.


=head2 Name => Str

The name of the campaign.


=head2 Schedule => L<Paws::Pinpoint::Schedule>

The schedule settings for the campaign.


=head2 B<REQUIRED> SegmentId => Str

The unique identifier for the segment that's associated with the
campaign.


=head2 B<REQUIRED> SegmentVersion => Int

The version number of the segment that's associated with the campaign.


=head2 State => L<Paws::Pinpoint::CampaignState>

The current status of the campaign.


=head2 Tags => L<Paws::Pinpoint::MapOf__string>

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

