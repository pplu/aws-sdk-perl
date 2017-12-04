package Paws::DynamoDBStreams::Shard;
  use Moose;
  has ParentShardId => (is => 'ro', isa => 'Str');
  has SequenceNumberRange => (is => 'ro', isa => 'Paws::DynamoDBStreams::SequenceNumberRange');
  has ShardId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDBStreams::Shard

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DynamoDBStreams::Shard object:

  $service_obj->Method(Att1 => { ParentShardId => $value, ..., ShardId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DynamoDBStreams::Shard object:

  $result = $service_obj->Method(...);
  $result->Att1->ParentShardId

=head1 DESCRIPTION

A uniquely identified group of stream records within a stream.

=head1 ATTRIBUTES


=head2 ParentShardId => Str

  The shard ID of the current shard's parent.


=head2 SequenceNumberRange => L<Paws::DynamoDBStreams::SequenceNumberRange>

  The range of possible sequence numbers for the shard.


=head2 ShardId => Str

  The system-generated identifier for this shard.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DynamoDBStreams>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

