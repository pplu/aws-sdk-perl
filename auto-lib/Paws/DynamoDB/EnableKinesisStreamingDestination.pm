
package Paws::DynamoDB::EnableKinesisStreamingDestination;
  use Moose;
  has StreamArn => (is => 'ro', isa => 'Str', required => 1);
  has TableName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'EnableKinesisStreamingDestination');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DynamoDB::KinesisStreamingDestinationOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::EnableKinesisStreamingDestination - Arguments for method EnableKinesisStreamingDestination on L<Paws::DynamoDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method EnableKinesisStreamingDestination on the
L<Amazon DynamoDB|Paws::DynamoDB> service. Use the attributes of this class
as arguments to method EnableKinesisStreamingDestination.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to EnableKinesisStreamingDestination.

=head1 SYNOPSIS

    my $dynamodb = Paws->service('DynamoDB');
    my $KinesisStreamingDestinationOutput =
      $dynamodb->EnableKinesisStreamingDestination(
      StreamArn => 'MyStreamArn',
      TableName => 'MyTableName',

      );

    # Results:
    my $DestinationStatus =
      $KinesisStreamingDestinationOutput->DestinationStatus;
    my $StreamArn = $KinesisStreamingDestinationOutput->StreamArn;
    my $TableName = $KinesisStreamingDestinationOutput->TableName;

    # Returns a L<Paws::DynamoDB::KinesisStreamingDestinationOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dynamodb/EnableKinesisStreamingDestination>

=head1 ATTRIBUTES


=head2 B<REQUIRED> StreamArn => Str

The ARN for a Kinesis data stream.



=head2 B<REQUIRED> TableName => Str

The name of the DynamoDB table.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method EnableKinesisStreamingDestination in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

