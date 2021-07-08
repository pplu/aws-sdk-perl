
package Paws::DynamoDB::DescribeKinesisStreamingDestination;
  use Moose;
  has TableName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeKinesisStreamingDestination');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DynamoDB::DescribeKinesisStreamingDestinationOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::DescribeKinesisStreamingDestination - Arguments for method DescribeKinesisStreamingDestination on L<Paws::DynamoDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeKinesisStreamingDestination on the
L<Amazon DynamoDB|Paws::DynamoDB> service. Use the attributes of this class
as arguments to method DescribeKinesisStreamingDestination.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeKinesisStreamingDestination.

=head1 SYNOPSIS

    my $dynamodb = Paws->service('DynamoDB');
    my $DescribeKinesisStreamingDestinationOutput =
      $dynamodb->DescribeKinesisStreamingDestination(
      TableName => 'MyTableName',

      );

    # Results:
    my $KinesisDataStreamDestinations =
      $DescribeKinesisStreamingDestinationOutput->KinesisDataStreamDestinations;
    my $TableName = $DescribeKinesisStreamingDestinationOutput->TableName;

# Returns a L<Paws::DynamoDB::DescribeKinesisStreamingDestinationOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dynamodb/DescribeKinesisStreamingDestination>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TableName => Str

The name of the table being described.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeKinesisStreamingDestination in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

