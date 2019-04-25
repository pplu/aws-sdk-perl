
package Paws::Kinesis::DeregisterStreamConsumer;
  use Moose;
  has ConsumerARN => (is => 'ro', isa => 'Str');
  has ConsumerName => (is => 'ro', isa => 'Str');
  has StreamARN => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeregisterStreamConsumer');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kinesis::DeregisterStreamConsumer - Arguments for method DeregisterStreamConsumer on L<Paws::Kinesis>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeregisterStreamConsumer on the
L<Amazon Kinesis|Paws::Kinesis> service. Use the attributes of this class
as arguments to method DeregisterStreamConsumer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeregisterStreamConsumer.

=head1 SYNOPSIS

    my $kinesis = Paws->service('Kinesis');
    $kinesis->DeregisterStreamConsumer(
      ConsumerARN  => 'MyConsumerARN',     # OPTIONAL
      ConsumerName => 'MyConsumerName',    # OPTIONAL
      StreamARN    => 'MyStreamARN',       # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kinesis/DeregisterStreamConsumer>

=head1 ATTRIBUTES


=head2 ConsumerARN => Str

The ARN returned by Kinesis Data Streams when you registered the
consumer. If you don't know the ARN of the consumer that you want to
deregister, you can use the ListStreamConsumers operation to get a list
of the descriptions of all the consumers that are currently registered
with a given data stream. The description of a consumer contains its
ARN.



=head2 ConsumerName => Str

The name that you gave to the consumer.



=head2 StreamARN => Str

The ARN of the Kinesis data stream that the consumer is registered
with. For more information, see Amazon Resource Names (ARNs) and AWS
Service Namespaces
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kinesis-streams).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeregisterStreamConsumer in L<Paws::Kinesis>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

