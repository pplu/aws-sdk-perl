
package Paws::DocDB::CopyDBClusterSnapshot;
  use Moose;
  has CopyTags => (is => 'ro', isa => 'Bool');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has PreSignedUrl => (is => 'ro', isa => 'Str');
  has SourceDBClusterSnapshotIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::DocDB::Tag]');
  has TargetDBClusterSnapshotIdentifier => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CopyDBClusterSnapshot');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DocDB::CopyDBClusterSnapshotResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CopyDBClusterSnapshotResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDB::CopyDBClusterSnapshot - Arguments for method CopyDBClusterSnapshot on L<Paws::DocDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CopyDBClusterSnapshot on the
L<Amazon DocumentDB with MongoDB compatibility|Paws::DocDB> service. Use the attributes of this class
as arguments to method CopyDBClusterSnapshot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CopyDBClusterSnapshot.

=head1 SYNOPSIS

    my $rds = Paws->service('DocDB');
    my $CopyDBClusterSnapshotResult = $rds->CopyDBClusterSnapshot(
      SourceDBClusterSnapshotIdentifier => 'MyString',
      TargetDBClusterSnapshotIdentifier => 'MyString',
      CopyTags                          => 1,             # OPTIONAL
      KmsKeyId                          => 'MyString',    # OPTIONAL
      PreSignedUrl                      => 'MyString',    # OPTIONAL
      Tags                              => [
        {
          Key   => 'MyString',
          Value => 'MyString',
        },
        ...
      ],                                                  # OPTIONAL
    );

    # Results:
    my $DBClusterSnapshot = $CopyDBClusterSnapshotResult->DBClusterSnapshot;

    # Returns a L<Paws::DocDB::CopyDBClusterSnapshotResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/CopyDBClusterSnapshot>

=head1 ATTRIBUTES


=head2 CopyTags => Bool

Set to C<true> to copy all tags from the source cluster snapshot to the
target cluster snapshot, and otherwise C<false>. The default is
C<false>.



=head2 KmsKeyId => Str

The AWS KMS key ID for an encrypted cluster snapshot. The AWS KMS key
ID is the Amazon Resource Name (ARN), AWS KMS key identifier, or the
AWS KMS key alias for the AWS KMS encryption key.

If you copy an encrypted cluster snapshot from your AWS account, you
can specify a value for C<KmsKeyId> to encrypt the copy with a new AWS
KMS encryption key. If you don't specify a value for C<KmsKeyId>, then
the copy of the cluster snapshot is encrypted with the same AWS KMS key
as the source cluster snapshot.

If you copy an encrypted cluster snapshot that is shared from another
AWS account, then you must specify a value for C<KmsKeyId>.

To copy an encrypted cluster snapshot to another AWS Region, set
C<KmsKeyId> to the AWS KMS key ID that you want to use to encrypt the
copy of the cluster snapshot in the destination Region. AWS KMS
encryption keys are specific to the AWS Region that they are created
in, and you can't use encryption keys from one AWS Region in another
AWS Region.

If you copy an unencrypted cluster snapshot and specify a value for the
C<KmsKeyId> parameter, an error is returned.



=head2 PreSignedUrl => Str

The URL that contains a Signature Version 4 signed request for the
C<CopyDBClusterSnapshot> API action in the AWS Region that contains the
source cluster snapshot to copy. You must use the C<PreSignedUrl>
parameter when copying a cluster snapshot from another AWS Region.

If you are using an AWS SDK tool or the AWS CLI, you can specify
C<SourceRegion> (or C<--source-region> for the AWS CLI) instead of
specifying C<PreSignedUrl> manually. Specifying C<SourceRegion>
autogenerates a pre-signed URL that is a valid request for the
operation that can be executed in the source AWS Region.

The presigned URL must be a valid request for the
C<CopyDBClusterSnapshot> API action that can be executed in the source
AWS Region that contains the cluster snapshot to be copied. The
presigned URL request must contain the following parameter values:

=over

=item *

C<SourceRegion> - The ID of the region that contains the snapshot to be
copied.

=item *

C<SourceDBClusterSnapshotIdentifier> - The identifier for the the
encrypted cluster snapshot to be copied. This identifier must be in the
Amazon Resource Name (ARN) format for the source AWS Region. For
example, if you are copying an encrypted cluster snapshot from the
us-east-1 AWS Region, then your C<SourceDBClusterSnapshotIdentifier>
looks something like the following:
C<arn:aws:rds:us-east-1:12345678012:sample-cluster:sample-cluster-snapshot>.

=item *

C<TargetDBClusterSnapshotIdentifier> - The identifier for the new
cluster snapshot to be created. This parameter isn't case sensitive.

=back




=head2 B<REQUIRED> SourceDBClusterSnapshotIdentifier => Str

The identifier of the cluster snapshot to copy. This parameter is not
case sensitive.

Constraints:

=over

=item *

Must specify a valid system snapshot in the I<available> state.

=item *

If the source snapshot is in the same AWS Region as the copy, specify a
valid snapshot identifier.

=item *

If the source snapshot is in a different AWS Region than the copy,
specify a valid cluster snapshot ARN.

=back

Example: C<my-cluster-snapshot1>



=head2 Tags => ArrayRef[L<Paws::DocDB::Tag>]

The tags to be assigned to the cluster snapshot.



=head2 B<REQUIRED> TargetDBClusterSnapshotIdentifier => Str

The identifier of the new cluster snapshot to create from the source
cluster snapshot. This parameter is not case sensitive.

Constraints:

=over

=item *

Must contain from 1 to 63 letters, numbers, or hyphens.

=item *

The first character must be a letter.

=item *

Cannot end with a hyphen or contain two consecutive hyphens.

=back

Example: C<my-cluster-snapshot2>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CopyDBClusterSnapshot in L<Paws::DocDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

