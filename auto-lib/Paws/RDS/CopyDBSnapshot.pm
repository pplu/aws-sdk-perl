
package Paws::RDS::CopyDBSnapshot;
  use Moose;
  has CopyTags => (is => 'ro', isa => 'Bool');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has OptionGroupName => (is => 'ro', isa => 'Str');
  has PreSignedUrl => (is => 'ro', isa => 'Str');
  has SourceDBSnapshotIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::RDS::Tag]');
  has TargetCustomAvailabilityZone => (is => 'ro', isa => 'Str');
  has TargetDBSnapshotIdentifier => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CopyDBSnapshot');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::CopyDBSnapshotResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CopyDBSnapshotResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::CopyDBSnapshot - Arguments for method CopyDBSnapshot on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CopyDBSnapshot on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method CopyDBSnapshot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CopyDBSnapshot.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    # To copy a DB snapshot
    # This example copies a DB snapshot.
    my $CopyDBSnapshotResult = $rds->CopyDBSnapshot(
      'SourceDBSnapshotIdentifier' => 'mydbsnapshot',
      'TargetDBSnapshotIdentifier' => 'mydbsnapshot-copy'
    );

    # Results:
    my $DBSnapshot = $CopyDBSnapshotResult->DBSnapshot;

    # Returns a L<Paws::RDS::CopyDBSnapshotResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/CopyDBSnapshot>

=head1 ATTRIBUTES


=head2 CopyTags => Bool

A value that indicates whether to copy all tags from the source DB
snapshot to the target DB snapshot. By default, tags are not copied.



=head2 KmsKeyId => Str

The Amazon Web Services KMS key identifier for an encrypted DB
snapshot. The Amazon Web Services KMS key identifier is the key ARN,
key ID, alias ARN, or alias name for the Amazon Web Services KMS
customer master key (CMK).

If you copy an encrypted DB snapshot from your Amazon Web Services
account, you can specify a value for this parameter to encrypt the copy
with a new Amazon Web Services KMS CMK. If you don't specify a value
for this parameter, then the copy of the DB snapshot is encrypted with
the same Amazon Web Services KMS key as the source DB snapshot.

If you copy an encrypted DB snapshot that is shared from another Amazon
Web Services account, then you must specify a value for this parameter.

If you specify this parameter when you copy an unencrypted snapshot,
the copy is encrypted.

If you copy an encrypted snapshot to a different Amazon Web Services
Region, then you must specify a Amazon Web Services KMS key identifier
for the destination Amazon Web Services Region. Amazon Web Services KMS
CMKs are specific to the Amazon Web Services Region that they are
created in, and you can't use CMKs from one Amazon Web Services Region
in another Amazon Web Services Region.



=head2 OptionGroupName => Str

The name of an option group to associate with the copy of the snapshot.

Specify this option if you are copying a snapshot from one Amazon Web
Services Region to another, and your DB instance uses a nondefault
option group. If your source DB instance uses Transparent Data
Encryption for Oracle or Microsoft SQL Server, you must specify this
option when copying across Amazon Web Services Regions. For more
information, see Option group considerations
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_CopySnapshot.html#USER_CopySnapshot.Options)
in the I<Amazon RDS User Guide.>



=head2 PreSignedUrl => Str

The URL that contains a Signature Version 4 signed request for the
C<CopyDBSnapshot> API action in the source Amazon Web Services Region
that contains the source DB snapshot to copy.

You must specify this parameter when you copy an encrypted DB snapshot
from another Amazon Web Services Region by using the Amazon RDS API.
Don't specify C<PreSignedUrl> when you are copying an encrypted DB
snapshot in the same Amazon Web Services Region.

The presigned URL must be a valid request for the C<CopyDBSnapshot> API
action that can be executed in the source Amazon Web Services Region
that contains the encrypted DB snapshot to be copied. The presigned URL
request must contain the following parameter values:

=over

=item *

C<DestinationRegion> - The Amazon Web Services Region that the
encrypted DB snapshot is copied to. This Amazon Web Services Region is
the same one where the C<CopyDBSnapshot> action is called that contains
this presigned URL.

For example, if you copy an encrypted DB snapshot from the us-west-2
Amazon Web Services Region to the us-east-1 Amazon Web Services Region,
then you call the C<CopyDBSnapshot> action in the us-east-1 Amazon Web
Services Region and provide a presigned URL that contains a call to the
C<CopyDBSnapshot> action in the us-west-2 Amazon Web Services Region.
For this example, the C<DestinationRegion> in the presigned URL must be
set to the us-east-1 Amazon Web Services Region.

=item *

C<KmsKeyId> - The Amazon Web Services KMS key identifier for the
customer master key (CMK) to use to encrypt the copy of the DB snapshot
in the destination Amazon Web Services Region. This is the same
identifier for both the C<CopyDBSnapshot> action that is called in the
destination Amazon Web Services Region, and the action contained in the
presigned URL.

=item *

C<SourceDBSnapshotIdentifier> - The DB snapshot identifier for the
encrypted snapshot to be copied. This identifier must be in the Amazon
Resource Name (ARN) format for the source Amazon Web Services Region.
For example, if you are copying an encrypted DB snapshot from the
us-west-2 Amazon Web Services Region, then your
C<SourceDBSnapshotIdentifier> looks like the following example:
C<arn:aws:rds:us-west-2:123456789012:snapshot:mysql-instance1-snapshot-20161115>.

=back

To learn how to generate a Signature Version 4 signed request, see
Authenticating Requests: Using Query Parameters (Amazon Web Services
Signature Version 4)
(https://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html)
and Signature Version 4 Signing Process
(https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).

If you are using an Amazon Web Services SDK tool or the CLI, you can
specify C<SourceRegion> (or C<--source-region> for the CLI) instead of
specifying C<PreSignedUrl> manually. Specifying C<SourceRegion>
autogenerates a pre-signed URL that is a valid request for the
operation that can be executed in the source Amazon Web Services
Region.



=head2 B<REQUIRED> SourceDBSnapshotIdentifier => Str

The identifier for the source DB snapshot.

If the source snapshot is in the same Amazon Web Services Region as the
copy, specify a valid DB snapshot identifier. For example, you might
specify C<rds:mysql-instance1-snapshot-20130805>.

If the source snapshot is in a different Amazon Web Services Region
than the copy, specify a valid DB snapshot ARN. For example, you might
specify
C<arn:aws:rds:us-west-2:123456789012:snapshot:mysql-instance1-snapshot-20130805>.

If you are copying from a shared manual DB snapshot, this parameter
must be the Amazon Resource Name (ARN) of the shared DB snapshot.

If you are copying an encrypted snapshot this parameter must be in the
ARN format for the source Amazon Web Services Region, and must match
the C<SourceDBSnapshotIdentifier> in the C<PreSignedUrl> parameter.

Constraints:

=over

=item *

Must specify a valid system snapshot in the "available" state.

=back

Example: C<rds:mydb-2012-04-02-00-01>

Example:
C<arn:aws:rds:us-west-2:123456789012:snapshot:mysql-instance1-snapshot-20130805>



=head2 Tags => ArrayRef[L<Paws::RDS::Tag>]





=head2 TargetCustomAvailabilityZone => Str

The external custom Availability Zone (CAZ) identifier for the target
CAZ.

Example: C<rds-caz-aiqhTgQv>.



=head2 B<REQUIRED> TargetDBSnapshotIdentifier => Str

The identifier for the copy of the snapshot.

Constraints:

=over

=item *

Can't be null, empty, or blank

=item *

Must contain from 1 to 255 letters, numbers, or hyphens

=item *

First character must be a letter

=item *

Can't end with a hyphen or contain two consecutive hyphens

=back

Example: C<my-db-snapshot>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CopyDBSnapshot in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

