package Paws::Kinesis::StreamDescriptionSummary;
  use Moose;
  has ConsumerCount => (is => 'ro', isa => 'Int');
  has EncryptionType => (is => 'ro', isa => 'Str');
  has EnhancedMonitoring => (is => 'ro', isa => 'ArrayRef[Paws::Kinesis::EnhancedMetrics]', required => 1);
  has KeyId => (is => 'ro', isa => 'Str');
  has OpenShardCount => (is => 'ro', isa => 'Int', required => 1);
  has RetentionPeriodHours => (is => 'ro', isa => 'Int', required => 1);
  has StreamARN => (is => 'ro', isa => 'Str', required => 1);
  has StreamCreationTimestamp => (is => 'ro', isa => 'Str', required => 1);
  has StreamName => (is => 'ro', isa => 'Str', required => 1);
  has StreamStatus => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kinesis::StreamDescriptionSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Kinesis::StreamDescriptionSummary object:

  $service_obj->Method(Att1 => { ConsumerCount => $value, ..., StreamStatus => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Kinesis::StreamDescriptionSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->ConsumerCount

=head1 DESCRIPTION

Represents the output for DescribeStreamSummary

=head1 ATTRIBUTES


=head2 ConsumerCount => Int

  The number of enhanced fan-out consumers registered with the stream.


=head2 EncryptionType => Str

  The encryption type used. This value is one of the following:

=over

=item *

C<KMS>

=item *

C<NONE>

=back



=head2 B<REQUIRED> EnhancedMonitoring => ArrayRef[L<Paws::Kinesis::EnhancedMetrics>]

  Represents the current enhanced monitoring settings of the stream.


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

Alias ARN example: C<
arn:aws:kms:us-east-1:123456789012:alias/MyAliasName>

=item *

Globally unique key ID example: C<12345678-1234-1234-1234-123456789012>

=item *

Alias name example: C<alias/MyAliasName>

=item *

Master key owned by Kinesis Data Streams: C<alias/aws/kinesis>

=back



=head2 B<REQUIRED> OpenShardCount => Int

  The number of open shards in the stream.


=head2 B<REQUIRED> RetentionPeriodHours => Int

  The current retention period, in hours.


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

