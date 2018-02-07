package Paws::Kinesis::PutRecordsRequestEntry;
  use Moose;
  has Data => (is => 'ro', isa => 'Str', required => 1);
  has ExplicitHashKey => (is => 'ro', isa => 'Str');
  has PartitionKey => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kinesis::PutRecordsRequestEntry

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Kinesis::PutRecordsRequestEntry object:

  $service_obj->Method(Att1 => { Data => $value, ..., PartitionKey => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Kinesis::PutRecordsRequestEntry object:

  $result = $service_obj->Method(...);
  $result->Att1->Data

=head1 DESCRIPTION

Represents the output for C<PutRecords>.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Data => Str

  The data blob to put into the record, which is base64-encoded when the
blob is serialized. When the data blob (the payload before
base64-encoding) is added to the partition key size, the total size
must not exceed the maximum record size (1 MB).


=head2 ExplicitHashKey => Str

  The hash value used to determine explicitly the shard that the data
record is assigned to by overriding the partition key hash.


=head2 B<REQUIRED> PartitionKey => Str

  Determines which shard in the stream the data record is assigned to.
Partition keys are Unicode strings with a maximum length limit of 256
characters for each key. Amazon Kinesis Data Streams uses the partition
key as input to a hash function that maps the partition key and
associated data to a specific shard. Specifically, an MD5 hash function
is used to map partition keys to 128-bit integer values and to map
associated data records to shards. As a result of this hashing
mechanism, all data records with the same partition key map to the same
shard within the stream.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Kinesis>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

