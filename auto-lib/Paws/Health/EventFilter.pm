package Paws::Health::EventFilter;
  use Moose;
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str|Undef]', xmlname => 'availabilityZones', request_name => 'availabilityZones', traits => ['Unwrapped','NameInRequest']);
  has EndTimes => (is => 'ro', isa => 'ArrayRef[Paws::Health::DateTimeRange]', xmlname => 'endTimes', request_name => 'endTimes', traits => ['Unwrapped','NameInRequest']);
  has EntityArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', xmlname => 'entityArns', request_name => 'entityArns', traits => ['Unwrapped','NameInRequest']);
  has EntityValues => (is => 'ro', isa => 'ArrayRef[Str|Undef]', xmlname => 'entityValues', request_name => 'entityValues', traits => ['Unwrapped','NameInRequest']);
  has EventArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', xmlname => 'eventArns', request_name => 'eventArns', traits => ['Unwrapped','NameInRequest']);
  has EventStatusCodes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', xmlname => 'eventStatusCodes', request_name => 'eventStatusCodes', traits => ['Unwrapped','NameInRequest']);
  has EventTypeCategories => (is => 'ro', isa => 'ArrayRef[Str|Undef]', xmlname => 'eventTypeCategories', request_name => 'eventTypeCategories', traits => ['Unwrapped','NameInRequest']);
  has EventTypeCodes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', xmlname => 'eventTypeCodes', request_name => 'eventTypeCodes', traits => ['Unwrapped','NameInRequest']);
  has LastUpdatedTimes => (is => 'ro', isa => 'ArrayRef[Paws::Health::DateTimeRange]', xmlname => 'lastUpdatedTimes', request_name => 'lastUpdatedTimes', traits => ['Unwrapped','NameInRequest']);
  has Regions => (is => 'ro', isa => 'ArrayRef[Str|Undef]', xmlname => 'regions', request_name => 'regions', traits => ['Unwrapped','NameInRequest']);
  has Services => (is => 'ro', isa => 'ArrayRef[Str|Undef]', xmlname => 'services', request_name => 'services', traits => ['Unwrapped','NameInRequest']);
  has StartTimes => (is => 'ro', isa => 'ArrayRef[Paws::Health::DateTimeRange]', xmlname => 'startTimes', request_name => 'startTimes', traits => ['Unwrapped','NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Health::TagSet]', xmlname => 'tags', request_name => 'tags', traits => ['Unwrapped','NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Health::EventFilter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Health::EventFilter object:

  $service_obj->Method(Att1 => { AvailabilityZones => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Health::EventFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->AvailabilityZones

=head1 DESCRIPTION

The values to use to filter results from the DescribeEvents and
DescribeEventAggregates operations.

=head1 ATTRIBUTES


=head2 AvailabilityZones => ArrayRef[Str|Undef]

  A list of AWS availability zones.


=head2 EndTimes => ArrayRef[L<Paws::Health::DateTimeRange>]

  A list of dates and times that the event ended.


=head2 EntityArns => ArrayRef[Str|Undef]

  A list of entity ARNs (unique identifiers).


=head2 EntityValues => ArrayRef[Str|Undef]

  A list of entity identifiers, such as EC2 instance IDs (C<i-34ab692e>)
or EBS volumes (C<vol-426ab23e>).


=head2 EventArns => ArrayRef[Str|Undef]

  A list of event ARNs (unique identifiers). For example:
C<"arn:aws:health:us-east-1::event/AWS_EC2_MAINTENANCE_5331",
"arn:aws:health:us-west-1::event/AWS_EBS_LOST_VOLUME_xyz">


=head2 EventStatusCodes => ArrayRef[Str|Undef]

  A list of event status codes.


=head2 EventTypeCategories => ArrayRef[Str|Undef]

  A list of event type category codes (C<issue>, C<scheduledChange>, or
C<accountNotification>).


=head2 EventTypeCodes => ArrayRef[Str|Undef]

  A list of unique identifiers for event types. For example,
C<"AWS_EC2_SYSTEM_MAINTENANCE_EVENT","AWS_RDS_MAINTENANCE_SCHEDULED">


=head2 LastUpdatedTimes => ArrayRef[L<Paws::Health::DateTimeRange>]

  A list of dates and times that the event was last updated.


=head2 Regions => ArrayRef[Str|Undef]

  A list of AWS regions.


=head2 Services => ArrayRef[Str|Undef]

  The AWS services associated with the event. For example, C<EC2>,
C<RDS>.


=head2 StartTimes => ArrayRef[L<Paws::Health::DateTimeRange>]

  A list of dates and times that the event began.


=head2 Tags => ArrayRef[L<Paws::Health::TagSet>]

  A map of entity tags attached to the affected entity.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Health>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

