
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

Paws::Firehose::DescribeDeliveryStream - Arguments for method DescribeDeliveryStream on Paws::Firehose

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDeliveryStream on the 
Amazon Kinesis Firehose service. Use the attributes of this class
as arguments to method DescribeDeliveryStream.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDeliveryStream.

As an example:

  $service_obj->DescribeDeliveryStream(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeliveryStreamName => Str

The name of the delivery stream.



=head2 ExclusiveStartDestinationId => Str

Specifies the destination ID to start returning the destination
information. Currently Amazon Kinesis Firehose supports one destination
per delivery stream.



=head2 Limit => Int

The limit on the number of destinations to return. Currently, you can
have one destination per delivery stream.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDeliveryStream in L<Paws::Firehose>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

