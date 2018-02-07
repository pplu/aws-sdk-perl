
package Paws::Kinesis::PutRecordOutput;
  use Moose;
  has EncryptionType => (is => 'ro', isa => 'Str');
  has SequenceNumber => (is => 'ro', isa => 'Str', required => 1);
  has ShardId => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Kinesis::PutRecordOutput

=head1 ATTRIBUTES


=head2 EncryptionType => Str

The encryption type to use on the record. This parameter can be one of
the following values:

=over

=item *

C<NONE>: Do not encrypt the records in the stream.

=item *

C<KMS>: Use server-side encryption on the records in the stream using a
customer-managed AWS KMS key.

=back


Valid values are: C<"NONE">, C<"KMS">
=head2 B<REQUIRED> SequenceNumber => Str

The sequence number identifier that was assigned to the put data
record. The sequence number for the record is unique across all records
in the stream. A sequence number is the identifier associated with
every record put into the stream.


=head2 B<REQUIRED> ShardId => Str

The shard ID of the shard where the data record was placed.


=head2 _request_id => Str


=cut

1;