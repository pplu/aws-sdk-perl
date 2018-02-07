package Paws::Kinesis::Shard;
  use Moose;
  has AdjacentParentShardId => (is => 'ro', isa => 'Str');
  has HashKeyRange => (is => 'ro', isa => 'Paws::Kinesis::HashKeyRange', required => 1);
  has ParentShardId => (is => 'ro', isa => 'Str');
  has SequenceNumberRange => (is => 'ro', isa => 'Paws::Kinesis::SequenceNumberRange', required => 1);
  has ShardId => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kinesis::Shard

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Kinesis::Shard object:

  $service_obj->Method(Att1 => { AdjacentParentShardId => $value, ..., ShardId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Kinesis::Shard object:

  $result = $service_obj->Method(...);
  $result->Att1->AdjacentParentShardId

=head1 DESCRIPTION

A uniquely identified group of data records in a Kinesis data stream.

=head1 ATTRIBUTES


=head2 AdjacentParentShardId => Str

  The shard ID of the shard adjacent to the shard's parent.


=head2 B<REQUIRED> HashKeyRange => L<Paws::Kinesis::HashKeyRange>

  The range of possible hash key values for the shard, which is a set of
ordered contiguous positive integers.


=head2 ParentShardId => Str

  The shard ID of the shard's parent.


=head2 B<REQUIRED> SequenceNumberRange => L<Paws::Kinesis::SequenceNumberRange>

  The range of possible sequence numbers for the shard.


=head2 B<REQUIRED> ShardId => Str

  The unique identifier of the shard within the stream.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Kinesis>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

