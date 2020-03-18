package Paws::Pinpoint::ActivityResponse;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', required => 1);
  has CampaignId => (is => 'ro', isa => 'Str', required => 1);
  has End => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has Result => (is => 'ro', isa => 'Str');
  has ScheduledStart => (is => 'ro', isa => 'Str');
  has Start => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
  has SuccessfulEndpointCount => (is => 'ro', isa => 'Int');
  has TimezonesCompletedCount => (is => 'ro', isa => 'Int');
  has TimezonesTotalCount => (is => 'ro', isa => 'Int');
  has TotalEndpointCount => (is => 'ro', isa => 'Int');
  has TreatmentId => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::ActivityResponse

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::ActivityResponse object:

  $service_obj->Method(Att1 => { ApplicationId => $value, ..., TreatmentId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::ActivityResponse object:

  $result = $service_obj->Method(...);
  $result->Att1->ApplicationId

=head1 DESCRIPTION

Provides information about an activity that was performed by a
campaign.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

  The unique identifier for the application that the campaign applies to.


=head2 B<REQUIRED> CampaignId => Str

  The unique identifier for the campaign that the activity applies to.


=head2 End => Str

  The actual time, in ISO 8601 format, when the activity was marked
CANCELLED or COMPLETED.


=head2 B<REQUIRED> Id => Str

  The unique identifier for the activity.


=head2 Result => Str

  Specifies whether the activity succeeded. Possible values are SUCCESS
and FAIL.


=head2 ScheduledStart => Str

  The scheduled start time, in ISO 8601 format, for the activity.


=head2 Start => Str

  The actual start time, in ISO 8601 format, of the activity.


=head2 State => Str

  The current status of the activity. Possible values are: PENDING,
INITIALIZING, RUNNING, PAUSED, CANCELLED, and COMPLETED.


=head2 SuccessfulEndpointCount => Int

  The total number of endpoints that the campaign successfully delivered
messages to.


=head2 TimezonesCompletedCount => Int

  The total number of time zones that were completed.


=head2 TimezonesTotalCount => Int

  The total number of unique time zones that are in the segment for the
campaign.


=head2 TotalEndpointCount => Int

  The total number of endpoints that the campaign attempted to deliver
messages to.


=head2 TreatmentId => Str

  The unique identifier for the campaign treatment that the activity
applies to. A treatment is a variation of a campaign that's used for
A/B testing of a campaign.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

