
package Paws::Firehose::DescribeDeliveryStream;
  use Moose;
  has DeliveryStreamName => (is => 'ro', isa => 'Str', required => 1);
  has ExclusiveStartDestinationId => (is => 'ro', isa => 'Str');
  has Limit => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDeliveryStream');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Firehose::DescribeDeliveryStreamOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Firehose::DescribeDeliveryStream - Arguments for method DescribeDeliveryStream on L<Paws::Firehose>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDeliveryStream on the
L<Amazon Kinesis Firehose|Paws::Firehose> service. Use the attributes of this class
as arguments to method DescribeDeliveryStream.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDeliveryStream.

=head1 SYNOPSIS

    my $firehose = Paws->service('Firehose');
    my $DescribeDeliveryStreamOutput = $firehose->DescribeDeliveryStream(
      DeliveryStreamName          => 'MyDeliveryStreamName',
      ExclusiveStartDestinationId => 'MyDestinationId',        # OPTIONAL
      Limit                       => 1,                        # OPTIONAL
    );

    # Results:
    my $DeliveryStreamDescription =
      $DescribeDeliveryStreamOutput->DeliveryStreamDescription;

    # Returns a L<Paws::Firehose::DescribeDeliveryStreamOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/firehose/DescribeDeliveryStream>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeliveryStreamName => Str

The name of the delivery stream.



=head2 ExclusiveStartDestinationId => Str

The ID of the destination to start returning the destination
information. Kinesis Data Firehose supports one destination per
delivery stream.



=head2 Limit => Int

The limit on the number of destinations to return. You can have one
destination per delivery stream.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDeliveryStream in L<Paws::Firehose>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

