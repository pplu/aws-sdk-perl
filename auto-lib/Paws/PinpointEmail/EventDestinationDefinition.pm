package Paws::PinpointEmail::EventDestinationDefinition;
  use Moose;
  has CloudWatchDestination => (is => 'ro', isa => 'Paws::PinpointEmail::CloudWatchDestination');
  has Enabled => (is => 'ro', isa => 'Bool');
  has KinesisFirehoseDestination => (is => 'ro', isa => 'Paws::PinpointEmail::KinesisFirehoseDestination');
  has MatchingEventTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has PinpointDestination => (is => 'ro', isa => 'Paws::PinpointEmail::PinpointDestination');
  has SnsDestination => (is => 'ro', isa => 'Paws::PinpointEmail::SnsDestination');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointEmail::EventDestinationDefinition

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::PinpointEmail::EventDestinationDefinition object:

  $service_obj->Method(Att1 => { CloudWatchDestination => $value, ..., SnsDestination => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::PinpointEmail::EventDestinationDefinition object:

  $result = $service_obj->Method(...);
  $result->Att1->CloudWatchDestination

=head1 DESCRIPTION

An object that defines the event destination. Specifically, it defines
which services receive events from emails sent using the configuration
set that the event destination is associated with. Also defines the
types of events that are sent to the event destination.

=head1 ATTRIBUTES


=head2 CloudWatchDestination => L<Paws::PinpointEmail::CloudWatchDestination>

  An object that defines an Amazon CloudWatch destination for email
events. You can use Amazon CloudWatch to monitor and gain insights on
your email sending metrics.


=head2 Enabled => Bool

  If C<true>, the event destination is enabled. When the event
destination is enabled, the specified event types are sent to the
destinations in this C<EventDestinationDefinition>.

If C<false>, the event destination is disabled. When the event
destination is disabled, events aren't sent to the specified
destinations.


=head2 KinesisFirehoseDestination => L<Paws::PinpointEmail::KinesisFirehoseDestination>

  An object that defines an Amazon Kinesis Data Firehose destination for
email events. You can use Amazon Kinesis Data Firehose to stream data
to other services, such as Amazon S3 and Amazon Redshift.


=head2 MatchingEventTypes => ArrayRef[Str|Undef]

  An array that specifies which events Amazon Pinpoint should send to the
destinations in this C<EventDestinationDefinition>.


=head2 PinpointDestination => L<Paws::PinpointEmail::PinpointDestination>

  An object that defines a Amazon Pinpoint destination for email events.
You can use Amazon Pinpoint events to create attributes in Amazon
Pinpoint projects. You can use these attributes to create segments for
your campaigns.


=head2 SnsDestination => L<Paws::PinpointEmail::SnsDestination>

  An object that defines an Amazon SNS destination for email events. You
can use Amazon SNS to send notification when certain email events
occur.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::PinpointEmail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

