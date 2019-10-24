# Generated from callargs_class.tt

package Paws::SNS::CreateTopic;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SNS::Types qw/SNS_TopicAttributesMap SNS_Tag/;
  has Attributes => (is => 'ro', isa => SNS_TopicAttributesMap, predicate => 1);
  has Name => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[SNS_Tag], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateTopic');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::SNS::CreateTopicResponse');
  class_has _result_key => (isa => Str, is => 'ro', default => 'CreateTopicResult');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Attributes' => {
                                 'class' => 'Paws::SNS::TopicAttributesMap',
                                 'type' => 'SNS_TopicAttributesMap'
                               },
               'Tags' => {
                           'class' => 'Paws::SNS::Tag',
                           'type' => 'ArrayRef[SNS_Tag]'
                         },
               'Name' => {
                           'type' => 'Str'
                         }
             },
  'IsRequired' => {
                    'Name' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SNS::CreateTopic - Arguments for method CreateTopic on L<Paws::SNS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateTopic on the
L<Amazon Simple Notification Service|Paws::SNS> service. Use the attributes of this class
as arguments to method CreateTopic.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateTopic.

=head1 SYNOPSIS

    my $sns = Paws->service('SNS');
    my $CreateTopicResponse = $sns->CreateTopic(
      Name       => 'MytopicName',
      Attributes => { 'MyattributeName' => 'MyattributeValue', },    # OPTIONAL
      Tags       => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],                            # OPTIONAL
    );

    # Results:
    my $TopicArn = $CreateTopicResponse->TopicArn;

    # Returns a L<Paws::SNS::CreateTopicResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sns/CreateTopic>

=head1 ATTRIBUTES


=head2 Attributes => SNS_TopicAttributesMap

A map of attributes with their corresponding values.

The following lists the names, descriptions, and values of the special
request parameters that the C<CreateTopic> action uses:

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

C<KmsMasterKeyId> - The ID of an AWS-managed customer master key (CMK)
for Amazon SNS or a custom CMK. For more information, see Key Terms
(https://docs.aws.amazon.com/sns/latest/dg/sns-server-side-encryption.html#sse-key-terms).
For more examples, see KeyId
(https://docs.aws.amazon.com/kms/latest/APIReference/API_DescribeKey.html#API_DescribeKey_RequestParameters)
in the I<AWS Key Management Service API Reference>.

=back




=head2 B<REQUIRED> Name => Str

The name of the topic you want to create.

Constraints: Topic names must be made up of only uppercase and
lowercase ASCII letters, numbers, underscores, and hyphens, and must be
between 1 and 256 characters long.



=head2 Tags => ArrayRef[SNS_Tag]

The list of tags to add to a new topic.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateTopic in L<Paws::SNS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

