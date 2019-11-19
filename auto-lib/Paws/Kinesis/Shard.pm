# Generated from default/object.tt
package Paws::Kinesis::Shard;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Kinesis::Types qw/Kinesis_SequenceNumberRange Kinesis_HashKeyRange/;
  has AdjacentParentShardId => (is => 'ro', isa => Str);
  has HashKeyRange => (is => 'ro', isa => Kinesis_HashKeyRange, required => 1);
  has ParentShardId => (is => 'ro', isa => Str);
  has SequenceNumberRange => (is => 'ro', isa => Kinesis_SequenceNumberRange, required => 1);
  has ShardId => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ShardId' => {
                              'type' => 'Str'
                            },
               'ParentShardId' => {
                                    'type' => 'Str'
                                  },
               'SequenceNumberRange' => {
                                          'class' => 'Paws::Kinesis::SequenceNumberRange',
                                          'type' => 'Kinesis_SequenceNumberRange'
                                        },
               'HashKeyRange' => {
                                   'class' => 'Paws::Kinesis::HashKeyRange',
                                   'type' => 'Kinesis_HashKeyRange'
                                 },
               'AdjacentParentShardId' => {
                                            'type' => 'Str'
                                          }
             },
  'IsRequired' => {
                    'HashKeyRange' => 1,
                    'SequenceNumberRange' => 1,
                    'ShardId' => 1
                  }
}
;
    return $Params_map;
  }


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


=head2 B<REQUIRED> HashKeyRange => Kinesis_HashKeyRange

  The range of possible hash key values for the shard, which is a set of
ordered contiguous positive integers.


=head2 ParentShardId => Str

  The shard ID of the shard's parent.


=head2 B<REQUIRED> SequenceNumberRange => Kinesis_SequenceNumberRange

  The range of possible sequence numbers for the shard.


=head2 B<REQUIRED> ShardId => Str

  The unique identifier of the shard within the stream.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Kinesis>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

