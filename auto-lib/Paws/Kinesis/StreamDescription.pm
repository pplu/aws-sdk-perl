package Paws::Kinesis::StreamDescription;
  use Moose;
  has EncryptionType => (is => 'ro', isa => 'Str');
  has EnhancedMonitoring => (is => 'ro', isa => 'ArrayRef[Paws::Kinesis::EnhancedMetrics]', required => 1);
  has HasMoreShards => (is => 'ro', isa => 'Bool', required => 1);
  has KeyId => (is => 'ro', isa => 'Str');
  has RetentionPeriodHours => (is => 'ro', isa => 'Int', required => 1);
  has Shards => (is => 'ro', isa => 'ArrayRef[Paws::Kinesis::Shard]', required => 1);
  has StreamARN => (is => 'ro', isa => 'Str', required => 1);
  has StreamCreationTimestamp => (is => 'ro', isa => 'Str', required => 1);
  has StreamName => (is => 'ro', isa => 'Str', required => 1);
  has StreamStatus => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kinesis::StreamDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Kinesis::StreamDescription object:

  $service_obj->Method(Att1 => { EncryptionType => $value, ..., StreamStatus => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Kinesis::StreamDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->EncryptionType

=head1 DESCRIPTION

Represents the output for DescribeStream.

=head1 ATTRIBUTES


=head2 EncryptionType => Str

  The server-side encryption type used on the stream. This parameter can
be one of the following values:

=over

=item *

C<NONE>: Do not encrypt the records in the stream.

=item *

C<KMS>: Use server-side encryption on the records in the stream using a
customer-managed AWS KMS key.

=back



=head2 B<REQUIRED> EnhancedMonitoring => ArrayRef[L<Paws::Kinesis::EnhancedMetrics>]

  Represents the current enhanced monitoring settings of the stream.


=head2 B<REQUIRED> HasMoreShards => Bool

  If set to C<true>, more shards in the stream are available to describe.


=head2 KeyId => Str

  The GUID for the customer-managed AWS KMS key to use for encryption.
This value can be a globally unique identifier, a fully specified ARN
to either an alias or a key, or an alias name prefixed by "alias/".You
can also use a master key owned by Kinesis Data Streams by specifying
the alias C<aws/kinesis>.

=over

=item *

Key ARN example:
C<arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012>

=item *

Alias ARN example:
C<arn:aws:kms:us-east-1:123456789012:alias/MyAliasName>

=item *

Globally unique key ID example: C<12345678-1234-1234-1234-123456789012>

=item *

Alias name example: C<alias/MyAliasName>

=item *

Master key owned by Kinesis Data Streams: C<alias/aws/kinesis>

=back



=head2 B<REQUIRED> RetentionPeriodHours => Int

  The current retention period, in hours.


=head2 B<REQUIRED> Shards => ArrayRef[L<Paws::Kinesis::Shard>]

  The shards that comprise the stream.


=head2 B<REQUIRED> StreamARN => Str

  The Amazon Resource Name (ARN) for the stream being described.


=head2 B<REQUIRED> StreamCreationTimestamp => Str

  The approximate time that the stream was created.


=head2 B<REQUIRED> StreamName => Str

  The name of the stream being described.


=head2 B<REQUIRED> StreamStatus => Str

  The current status of the stream being described. The stream status is
one of the following states:

=over

=item *

C<CREATING> - The stream is being created. Kinesis Data Streams
immediately returns and sets C<StreamStatus> to C<CREATING>.

=item *

C<DELETING> - The stream is being deleted. The specified stream is in
the C<DELETING> state until Kinesis Data Streams completes the
deletion.

=item *

C<ACTIVE> - The stream exists and is ready for read and write
operations or deletion. You should perform read and write operations
only on an C<ACTIVE> stream.

=item *

C<UPDATING> - Shards in the stream are being merged or split. Read and
write operations continue to work while the stream is in the
C<UPDATING> state.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Kinesis>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

