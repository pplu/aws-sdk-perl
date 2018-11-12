
package Paws::DynamoDBStreams::DescribeStream;
  use Moose;
  has ExclusiveStartShardId => (is => 'ro', isa => 'Str');
  has Limit => (is => 'ro', isa => 'Int');
  has StreamArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeStream');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DynamoDBStreams::DescribeStreamOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDBStreams::DescribeStream - Arguments for method DescribeStream on L<Paws::DynamoDBStreams>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeStream on the
L<Amazon DynamoDB Streams|Paws::DynamoDBStreams> service. Use the attributes of this class
as arguments to method DescribeStream.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeStream.

=head1 SYNOPSIS

    my $streams.dynamodb = Paws->service('DynamoDBStreams');
    # To describe a stream with a given stream ARN
    # The following example describes a stream with a given stream ARN.
    my $DescribeStreamOutput = $streams
      . dynamodb->DescribeStream(
      {
        'StreamArn' =>
'arn:aws:dynamodb:us-west-2:111122223333:table/Forum/stream/2015-05-20T20:51:10.252'
      }
      );

    # Results:
    my $StreamDescription = $DescribeStreamOutput->StreamDescription;

    # Returns a L<Paws::DynamoDBStreams::DescribeStreamOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/streams.dynamodb/DescribeStream>

=head1 ATTRIBUTES


=head2 ExclusiveStartShardId => Str

The shard ID of the first item that this operation will evaluate. Use
the value that was returned for C<LastEvaluatedShardId> in the previous
operation.



=head2 Limit => Int

The maximum number of shard objects to return. The upper limit is 100.



=head2 B<REQUIRED> StreamArn => Str

The Amazon Resource Name (ARN) for the stream.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeStream in L<Paws::DynamoDBStreams>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

