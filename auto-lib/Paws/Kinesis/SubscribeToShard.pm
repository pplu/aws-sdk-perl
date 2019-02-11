
package Paws::Kinesis::SubscribeToShard;
  use Moose;
  has ConsumerARN => (is => 'ro', isa => 'Str', required => 1);
  has ShardId => (is => 'ro', isa => 'Str', required => 1);
  has StartingPosition => (is => 'ro', isa => 'Paws::Kinesis::StartingPosition', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SubscribeToShard');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Kinesis::SubscribeToShardOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kinesis::SubscribeToShard - Arguments for method SubscribeToShard on L<Paws::Kinesis>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SubscribeToShard on the
L<Amazon Kinesis|Paws::Kinesis> service. Use the attributes of this class
as arguments to method SubscribeToShard.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SubscribeToShard.

=head1 SYNOPSIS

    my $kinesis = Paws->service('Kinesis');
    my $SubscribeToShardOutput = $kinesis->SubscribeToShard(
      ConsumerARN      => 'MyConsumerARN',
      ShardId          => 'MyShardId',
      StartingPosition => {
        Type => 'AT_SEQUENCE_NUMBER'
        , # values: AT_SEQUENCE_NUMBER, AFTER_SEQUENCE_NUMBER, TRIM_HORIZON, LATEST, AT_TIMESTAMP
        SequenceNumber => 'MySequenceNumber',       # OPTIONAL
        Timestamp      => '1970-01-01T01:00:00',    # OPTIONAL
      },

    );

    # Results:
    my $EventStream = $SubscribeToShardOutput->EventStream;

    # Returns a L<Paws::Kinesis::SubscribeToShardOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kinesis/SubscribeToShard>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConsumerARN => Str

For this parameter, use the value you obtained when you called
RegisterStreamConsumer.



=head2 B<REQUIRED> ShardId => Str

The ID of the shard you want to subscribe to. To see a list of all the
shards for a given stream, use ListShards.



=head2 B<REQUIRED> StartingPosition => L<Paws::Kinesis::StartingPosition>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SubscribeToShard in L<Paws::Kinesis>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

