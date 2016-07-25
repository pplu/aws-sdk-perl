
package Paws::SNS::SetSMSAttributes;
  use Moose;
  has Attributes => (is => 'ro', isa => 'HashRef[Str]', traits => ['NameInRequest'], request_name => 'attributes' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetSMSAttributes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SNS::SetSMSAttributesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'SetSMSAttributesResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SNS::SetSMSAttributes - Arguments for method SetSMSAttributes on Paws::SNS

=head1 DESCRIPTION

This class represents the parameters used for calling the method SetSMSAttributes on the 
Amazon Simple Notification Service service. Use the attributes of this class
as arguments to method SetSMSAttributes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SetSMSAttributes.

As an example:

  $service_obj->SetSMSAttributes(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Attributes => HashRef[Str]

The default settings for sending SMS messages from your account. You
can set values for the following attribute names:

C<MonthlySpendLimit> E<ndash> The maximum amount in USD that you are
willing to spend each month to send SMS messages. When Amazon SNS
determines that sending an SMS message would incur a cost that exceeds
this limit, it stops sending SMS messages within minutes.

Amazon SNS stops sending SMS messages within minutes of the limit being
crossed. During that interval, if you continue to send SMS messages,
you will incur costs that exceed your limit.

C<DeliveryStatusIAMRole> E<ndash> The ARN of the IAM role that allows
Amazon SNS to write logs about SMS deliveries in CloudWatch Logs. For
each SMS message that you send, Amazon SNS writes a log that includes
the message price, the success or failure status, the reason for
failure (if the message failed), the message dwell time, and other
information.

C<DeliveryStatusSuccessSamplingRate> E<ndash> The percentage of
successful SMS deliveries for which Amazon SNS will write logs in
CloudWatch Logs. The value can be an integer from 0 - 100. For example,
to write logs only for failed deliveries, set this value to C<0>. To
write logs for 10% of your successful deliveries, set it to C<10>.

C<DefaultSenderID> E<ndash> A string, such as your business brand, that
is displayed as the sender on the receiving device. Support for sender
IDs varies by country. The sender ID can be 1 - 11 alphanumeric
characters, and it must contain at least one letter.

C<DefaultSMSType> E<ndash> The type of SMS message that you will send
by default. You can assign the following values:

=over

=item *

C<Promotional> E<ndash> Noncritical messages, such as marketing
messages. Amazon SNS optimizes the message delivery to incur the lowest
cost.

=item *

C<Transactional> E<ndash> (Default) Critical messages that support
customer transactions, such as one-time passcodes for multi-factor
authentication. Amazon SNS optimizes the message delivery to achieve
the highest reliability.

=back

C<UsageReportS3Bucket> E<ndash> The name of the Amazon S3 bucket to
receive daily SMS usage reports from Amazon SNS. Each day, Amazon SNS
will deliver a usage report as a CSV file to the bucket. The report
includes the following information for each SMS message that was
successfully delivered by your account:

=over

=item *

Time that the message was published (in UTC)

=item *

Message ID

=item *

Destination phone number

=item *

Message type

=item *

Delivery status

=item *

Message price (in USD)

=item *

Part number (a message is split into multiple parts if it is too long
for a single message)

=item *

Total number of parts

=back

To receive the report, the bucket must have a policy that allows the
Amazon SNS service principle to perform the C<s3:PutObject> and
C<s3:GetBucketLocation> actions.

For an example bucket policy and usage report, see Viewing Statistics
About SMS Message Delivery in the I<Amazon SNS Developer Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SetSMSAttributes in L<Paws::SNS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

