package Paws::Pinpoint::ActivityResponse;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str');
  has CampaignId => (is => 'ro', isa => 'Str');
  has End => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
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

Activity definition

=head1 ATTRIBUTES


=head2 ApplicationId => Str

  The ID of the application to which the campaign applies.


=head2 CampaignId => Str

  The ID of the campaign to which the activity applies.


=head2 End => Str

  The actual time the activity was marked CANCELLED or COMPLETED.
Provided in ISO 8601 format.


=head2 Id => Str

  The unique activity ID.


=head2 Result => Str

  Indicates whether the activity succeeded. Valid values: SUCCESS, FAIL


=head2 ScheduledStart => Str

  The scheduled start time for the activity in ISO 8601 format.


=head2 Start => Str

  The actual start time of the activity in ISO 8601 format.


=head2 State => Str

  The state of the activity. Valid values: PENDING, INITIALIZING,
RUNNING, PAUSED, CANCELLED, COMPLETED


=head2 SuccessfulEndpointCount => Int

  The total number of endpoints to which the campaign successfully
delivered messages.


=head2 TimezonesCompletedCount => Int

  The total number of timezones completed.


=head2 TimezonesTotalCount => Int

  The total number of unique timezones present in the segment.


=head2 TotalEndpointCount => Int

  The total number of endpoints to which the campaign attempts to deliver
messages.


=head2 TreatmentId => Str

  The ID of a variation of the campaign used for A/B testing.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

