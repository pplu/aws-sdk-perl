package Paws::Pinpoint::WriteCampaignRequest;
  use Moose;
  has AdditionalTreatments => (is => 'ro', isa => 'ArrayRef[Paws::Pinpoint::WriteTreatmentResource]');
  has Description => (is => 'ro', isa => 'Str');
  has HoldoutPercent => (is => 'ro', isa => 'Int');
  has Hook => (is => 'ro', isa => 'Paws::Pinpoint::CampaignHook');
  has IsPaused => (is => 'ro', isa => 'Bool');
  has Limits => (is => 'ro', isa => 'Paws::Pinpoint::CampaignLimits');
  has MessageConfiguration => (is => 'ro', isa => 'Paws::Pinpoint::MessageConfiguration');
  has Name => (is => 'ro', isa => 'Str');
  has Schedule => (is => 'ro', isa => 'Paws::Pinpoint::Schedule');
  has SegmentId => (is => 'ro', isa => 'Str');
  has SegmentVersion => (is => 'ro', isa => 'Int');
  has TreatmentDescription => (is => 'ro', isa => 'Str');
  has TreatmentName => (is => 'ro', isa => 'Str');
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

Used to create a campaign.

=head1 ATTRIBUTES


=head2 AdditionalTreatments => ArrayRef[L<Paws::Pinpoint::WriteTreatmentResource>]

  Treatments that are defined in addition to the default treatment.


=head2 Description => Str

  A description of the campaign.


=head2 HoldoutPercent => Int

  The allocated percentage of end users who will not receive messages
from this campaign.


=head2 Hook => L<Paws::Pinpoint::CampaignHook>

  Campaign hook information.


=head2 IsPaused => Bool

  Indicates whether the campaign is paused. A paused campaign does not
send messages unless you resume it by setting IsPaused to false.


=head2 Limits => L<Paws::Pinpoint::CampaignLimits>

  The campaign limits settings.


=head2 MessageConfiguration => L<Paws::Pinpoint::MessageConfiguration>

  The message configuration settings.


=head2 Name => Str

  The custom name of the campaign.


=head2 Schedule => L<Paws::Pinpoint::Schedule>

  The campaign schedule.


=head2 SegmentId => Str

  The ID of the segment to which the campaign sends messages.


=head2 SegmentVersion => Int

  The version of the segment to which the campaign sends messages.


=head2 TreatmentDescription => Str

  A custom description for the treatment.


=head2 TreatmentName => Str

  The custom name of a variation of the campaign used for A/B testing.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

