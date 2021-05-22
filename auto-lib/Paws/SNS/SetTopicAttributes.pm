
package Paws::SNS::SetTopicAttributes;
  use Moose;
  has AttributeName => (is => 'ro', isa => 'Str', required => 1);
  has AttributeValue => (is => 'ro', isa => 'Str');
  has TopicArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetTopicAttributes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SNS::SetTopicAttributes - Arguments for method SetTopicAttributes on L<Paws::SNS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SetTopicAttributes on the
L<Amazon Simple Notification Service|Paws::SNS> service. Use the attributes of this class
as arguments to method SetTopicAttributes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SetTopicAttributes.

=head1 SYNOPSIS

    my $sns = Paws->service('SNS');
    $sns->SetTopicAttributes(
      AttributeName  => 'MyattributeName',
      TopicArn       => 'MytopicARN',
      AttributeValue => 'MyattributeValue',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sns/SetTopicAttributes>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AttributeName => Str

A map of attributes with their corresponding values.

The following lists the names, descriptions, and values of the special
request parameters that the C<SetTopicAttributes> action uses:

=over

=item *

C<DeliveryPolicy> E<ndash> The policy that defines how Amazon SNS
retries failed deliveries to HTTP/S endpoints.

=item *

C<DisplayName> E<ndash> The display name to use for a topic with SMS
subscriptions.

=item *

C<Policy> E<ndash> The policy that defines who can access your topic.
By default, only the topic owner can publish or subscribe to the topic.

=back

The following attribute applies only to server-side-encryption
(https://docs.aws.amazon.com/sns/latest/dg/sns-server-side-encryption.html):

=over

=item *

C<KmsMasterKeyId> E<ndash> The ID of an AWS-managed customer master key
(CMK) for Amazon SNS or a custom CMK. For more information, see Key
Terms
(https://docs.aws.amazon.com/sns/latest/dg/sns-server-side-encryption.html#sse-key-terms).
For more examples, see KeyId
(https://docs.aws.amazon.com/kms/latest/APIReference/API_DescribeKey.html#API_DescribeKey_RequestParameters)
in the I<AWS Key Management Service API Reference>.

=back

The following attribute applies only to FIFO topics
(https://docs.aws.amazon.com/sns/latest/dg/sns-fifo-topics.html):

=over

=item *

C<ContentBasedDeduplication> E<ndash> Enables content-based
deduplication for FIFO topics.

=over

=item *

By default, C<ContentBasedDeduplication> is set to C<false>. If you
create a FIFO topic and this attribute is C<false>, you must specify a
value for the C<MessageDeduplicationId> parameter for the Publish
(https://docs.aws.amazon.com/sns/latest/api/API_Publish.html) action.

=item *

When you set C<ContentBasedDeduplication> to C<true>, Amazon SNS uses a
SHA-256 hash to generate the C<MessageDeduplicationId> using the body
of the message (but not the attributes of the message).

(Optional) To override the generated value, you can specify a value for
the the C<MessageDeduplicationId> parameter for the C<Publish> action.

=back

=back




=head2 AttributeValue => Str

The new value for the attribute.



=head2 B<REQUIRED> TopicArn => Str

The ARN of the topic to modify.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SetTopicAttributes in L<Paws::SNS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

