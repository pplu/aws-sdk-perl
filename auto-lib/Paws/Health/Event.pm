package Paws::Health::Event;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest']);
  has AvailabilityZone => (is => 'ro', isa => 'Str', request_name => 'availabilityZone', traits => ['NameInRequest']);
  has EndTime => (is => 'ro', isa => 'Str', request_name => 'endTime', traits => ['NameInRequest']);
  has EventTypeCategory => (is => 'ro', isa => 'Str', request_name => 'eventTypeCategory', traits => ['NameInRequest']);
  has EventTypeCode => (is => 'ro', isa => 'Str', request_name => 'eventTypeCode', traits => ['NameInRequest']);
  has LastUpdatedTime => (is => 'ro', isa => 'Str', request_name => 'lastUpdatedTime', traits => ['NameInRequest']);
  has Region => (is => 'ro', isa => 'Str', request_name => 'region', traits => ['NameInRequest']);
  has Service => (is => 'ro', isa => 'Str', request_name => 'service', traits => ['NameInRequest']);
  has StartTime => (is => 'ro', isa => 'Str', request_name => 'startTime', traits => ['NameInRequest']);
  has StatusCode => (is => 'ro', isa => 'Str', request_name => 'statusCode', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Health::Event

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Health::Event object:

  $service_obj->Method(Att1 => { Arn => $value, ..., StatusCode => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Health::Event object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Summary information about an event, returned by the DescribeEvents
operation. The DescribeEventDetails operation also returns this
information, as well as the EventDescription and additional event
metadata.

=head1 ATTRIBUTES


=head2 Arn => Str

  The unique identifier for the event. Format:
C<arn:aws:health:I<event-region>::event/I<SERVICE>/I<EVENT_TYPE_CODE>/I<EVENT_TYPE_PLUS_ID>
>. Example: C<Example:
arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-DEF456>


=head2 AvailabilityZone => Str

  The AWS Availability Zone of the event. For example, us-east-1a.


=head2 EndTime => Str

  The date and time that the event ended.


=head2 EventTypeCategory => Str

  The category of the event. Possible values are C<issue>,
C<scheduledChange>, and C<accountNotification>.


=head2 EventTypeCode => Str

  The unique identifier for the event type. The format is
C<AWS_I<SERVICE>_I<DESCRIPTION> >; for example,
C<AWS_EC2_SYSTEM_MAINTENANCE_EVENT>.


=head2 LastUpdatedTime => Str

  The most recent date and time that the event was updated.


=head2 Region => Str

  The AWS region name of the event.


=head2 Service => Str

  The AWS service that is affected by the event. For example, C<EC2>,
C<RDS>.


=head2 StartTime => Str

  The date and time that the event began.


=head2 StatusCode => Str

  The most recent status of the event. Possible values are C<open>,
C<closed>, and C<upcoming>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Health>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

