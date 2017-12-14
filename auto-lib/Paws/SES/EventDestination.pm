package Paws::SES::EventDestination;
  use Moose;
  has CloudWatchDestination => (is => 'ro', isa => 'Paws::SES::CloudWatchDestination');
  has Enabled => (is => 'ro', isa => 'Bool');
  has KinesisFirehoseDestination => (is => 'ro', isa => 'Paws::SES::KinesisFirehoseDestination');
  has MatchingEventTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has SNSDestination => (is => 'ro', isa => 'Paws::SES::SNSDestination');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::EventDestination

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SES::EventDestination object:

  $service_obj->Method(Att1 => { CloudWatchDestination => $value, ..., SNSDestination => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SES::EventDestination object:

  $result = $service_obj->Method(...);
  $result->Att1->CloudWatchDestination

=head1 DESCRIPTION

Contains information about the event destination that the specified
email sending events will be published to.

When you create or update an event destination, you must provide one,
and only one, destination. The destination can be Amazon CloudWatch,
Amazon Kinesis Firehose or Amazon Simple Notification Service (Amazon
SNS).

Event destinations are associated with configuration sets, which enable
you to publish email sending events to Amazon CloudWatch, Amazon
Kinesis Firehose, or Amazon Simple Notification Service (Amazon SNS).
For information about using configuration sets, see the Amazon SES
Developer Guide
(http://docs.aws.amazon.com/ses/latest/DeveloperGuide/monitor-sending-activity.html).

=head1 ATTRIBUTES


=head2 CloudWatchDestination => L<Paws::SES::CloudWatchDestination>

  An object that contains the names, default values, and sources of the
dimensions associated with an Amazon CloudWatch event destination.


=head2 Enabled => Bool

  Sets whether Amazon SES publishes events to this destination when you
send an email with the associated configuration set. Set to C<true> to
enable publishing to this destination; set to C<false> to prevent
publishing to this destination. The default value is C<false>.


=head2 KinesisFirehoseDestination => L<Paws::SES::KinesisFirehoseDestination>

  An object that contains the delivery stream ARN and the IAM role ARN
associated with an Amazon Kinesis Firehose event destination.


=head2 B<REQUIRED> MatchingEventTypes => ArrayRef[Str|Undef]

  The type of email sending events to publish to the event destination.


=head2 B<REQUIRED> Name => Str

  The name of the event destination. The name must:

=over

=item *

This value can only contain ASCII letters (a-z, A-Z), numbers (0-9),
underscores (_), or dashes (-).

=item *

Contain less than 64 characters.

=back



=head2 SNSDestination => L<Paws::SES::SNSDestination>

  An object that contains the topic ARN associated with an Amazon Simple
Notification Service (Amazon SNS) event destination.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

