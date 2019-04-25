
package Paws::DynamoDBStreams::GetRecords;
  use Moose;
  has Limit => (is => 'ro', isa => 'Int');
  has ShardIterator => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetRecords');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DynamoDBStreams::GetRecordsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDBStreams::GetRecords - Arguments for method GetRecords on L<Paws::DynamoDBStreams>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetRecords on the
L<Amazon DynamoDB Streams|Paws::DynamoDBStreams> service. Use the attributes of this class
as arguments to method GetRecords.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetRecords.

=head1 SYNOPSIS

    my $streams.dynamodb = Paws->service('DynamoDBStreams');
    # To retrieve all the stream records from a shard
    # The following example retrieves all the stream records from a shard.
    my $GetRecordsOutput = $streams
      . dynamodb->GetRecords(
      {
        'ShardIterator' =>
'arn:aws:dynamodb:us-west-2:111122223333:table/Forum/stream/2015-05-20T20:51:10.252|1|AAAAAAAAAAEvJp6D+zaQ...  <remaining characters omitted> ...'
      }
      );

    # Results:
    my $NextShardIterator = $GetRecordsOutput->NextShardIterator;
    my $Records           = $GetRecordsOutput->Records;

    # Returns a L<Paws::DynamoDBStreams::GetRecordsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/streams.dynamodb/GetRecords>

=head1 ATTRIBUTES


=head2 Limit => Int

The maximum number of records to return from the shard. The upper limit
is 1000.



=head2 B<REQUIRED> ShardIterator => Str

A shard iterator that was retrieved from a previous GetShardIterator
operation. This iterator can be used to access the stream records in
this shard.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetRecords in L<Paws::DynamoDBStreams>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

