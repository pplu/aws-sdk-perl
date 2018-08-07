
package Paws::Kinesis::RegisterStreamConsumer;
  use Moose;
  has ConsumerName => (is => 'ro', isa => 'Str', required => 1);
  has StreamARN => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterStreamConsumer');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Kinesis::RegisterStreamConsumerOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kinesis::RegisterStreamConsumer - Arguments for method RegisterStreamConsumer on L<Paws::Kinesis>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RegisterStreamConsumer on the
L<Amazon Kinesis|Paws::Kinesis> service. Use the attributes of this class
as arguments to method RegisterStreamConsumer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RegisterStreamConsumer.

=head1 SYNOPSIS

    my $kinesis = Paws->service('Kinesis');
    my $RegisterStreamConsumerOutput = $kinesis->RegisterStreamConsumer(
      ConsumerName => 'MyConsumerName',
      StreamARN    => 'MyStreamARN',

    );

    # Results:
    my $Consumer = $RegisterStreamConsumerOutput->Consumer;

    # Returns a L<Paws::Kinesis::RegisterStreamConsumerOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kinesis/RegisterStreamConsumer>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConsumerName => Str

For a given Kinesis data stream, each consumer must have a unique name.
However, consumer names don't have to be unique across data streams.



=head2 B<REQUIRED> StreamARN => Str

The ARN of the Kinesis data stream that you want to register the
consumer with. For more info, see Amazon Resource Names (ARNs) and AWS
Service Namespaces
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kinesis-streams).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RegisterStreamConsumer in L<Paws::Kinesis>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

