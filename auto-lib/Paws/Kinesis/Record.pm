package Paws::Kinesis::Record;
  use Moose;
  has ApproximateArrivalTimestamp => (is => 'ro', isa => 'Str');
  has Data => (is => 'ro', isa => 'Str', required => 1);
  has EncryptionType => (is => 'ro', isa => 'Str');
  has PartitionKey => (is => 'ro', isa => 'Str', required => 1);
  has SequenceNumber => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kinesis::Record

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Kinesis::Record object:

  $service_obj->Method(Att1 => { ApproximateArrivalTimestamp => $value, ..., SequenceNumber => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Kinesis::Record object:

  $result = $service_obj->Method(...);
  $result->Att1->ApproximateArrivalTimestamp

=head1 DESCRIPTION

The unit of data of the Kinesis data stream, which is composed of a
sequence number, a partition key, and a data blob.

=head1 ATTRIBUTES


=head2 ApproximateArrivalTimestamp => Str

  The approximate time that the record was inserted into the stream.


=head2 B<REQUIRED> Data => Str

  The data blob. The data in the blob is both opaque and immutable to
Kinesis Data Streams, which does not inspect, interpret, or change the
data in the blob in any way. When the data blob (the payload before
base64-encoding) is added to the partition key size, the total size
must not exceed the maximum record size (1 MB).


=head2 EncryptionType => Str

  The encryption type used on the record. This parameter can be one of
the following values:

=over

=item *

C<NONE>: Do not encrypt the records in the stream.

=item *

C<KMS>: Use server-side encryption on the records in the stream using a
customer-managed AWS KMS key.

=back



=head2 B<REQUIRED> PartitionKey => Str

  Identifies which shard in the stream the data record is assigned to.


=head2 B<REQUIRED> SequenceNumber => Str

  The unique identifier of the record within its shard.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Kinesis>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

