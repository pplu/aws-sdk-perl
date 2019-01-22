
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

Set to C<true> to copy all tags from the source DB cluster snapshot to
the target DB cluster snapshot, and otherwise C<false>. The default is
C<false>.



=head2 KmsKeyId => Str

The AWS KMS key ID for an encrypted DB cluster snapshot. The AWS KMS
key ID is the Amazon Resource Name (ARN), AWS KMS key identifier, or
the AWS KMS key alias for the AWS KMS encryption key.

If you copy an encrypted DB cluster snapshot from your AWS account, you
can specify a value for C<KmsKeyId> to encrypt the copy with a new AWS
KMS encryption key. If you don't specify a value for C<KmsKeyId>, then
the copy of the DB cluster snapshot is encrypted with the same AWS KMS
key as the source DB cluster snapshot.

If you copy an encrypted DB cluster snapshot that is shared from
another AWS account, then you must specify a value for C<KmsKeyId>.

To copy an encrypted DB cluster snapshot to another AWS Region, set
C<KmsKeyId> to the AWS KMS key ID that you want to use to encrypt the
copy of the DB cluster snapshot in the destination Region. AWS KMS
encryption keys are specific to the AWS Region that they are created
in, and you can't use encryption keys from one Region in another
Region.

If you copy an unencrypted DB cluster snapshot and specify a value for
the C<KmsKeyId> parameter, an error is returned.



=head2 PreSignedUrl => Str

The URL that contains a Signature Version 4 signed request for the
C<CopyDBClusterSnapshot> API action in the AWS Region that contains the
source DB cluster snapshot to copy. You must use the C<PreSignedUrl>
parameter when copying an encrypted DB cluster snapshot from another
AWS Region.

The presigned URL must be a valid request for the
C<CopyDBSClusterSnapshot> API action that can be executed in the source
AWS Region that contains the encrypted DB cluster snapshot to be
copied. The presigned URL request must contain the following parameter
values:

=over

=item *

C<KmsKeyId> - The AWS KMS key identifier for the key to use to encrypt
the copy of the DB cluster snapshot in the destination AWS Region. This
is the same identifier for both the C<CopyDBClusterSnapshot> action
that is called in the destination AWS Region, and the action contained
in the presigned URL.

=item *

C<DestinationRegion> - The name of the AWS Region that the DB cluster
snapshot will be created in.

=item *

C<SourceDBClusterSnapshotIdentifier> - The DB cluster snapshot
identifier for the encrypted DB cluster snapshot to be copied. This
identifier must be in the Amazon Resource Name (ARN) format for the
source AWS Region. For example, if you are copying an encrypted DB
cluster snapshot from the us-west-2 AWS Region, then your
C<SourceDBClusterSnapshotIdentifier> looks like the following example:
C<arn:aws:rds:us-west-2:123456789012:cluster-snapshot:my-cluster-snapshot-20161115>.

=back




=head2 B<REQUIRED> SourceDBClusterSnapshotIdentifier => Str

The identifier of the DB cluster snapshot to copy. This parameter is
not case sensitive.

You can't copy an encrypted, shared DB cluster snapshot from one AWS
Region to another.

Constraints:

=over

=item *

Must specify a valid system snapshot in the "available" state.

=item *

If the source snapshot is in the same AWS Region as the copy, specify a
valid DB snapshot identifier.

=item *

If the source snapshot is in a different AWS Region than the copy,
specify a valid DB cluster snapshot ARN.

=back

Example: C<my-cluster-snapshot1>



=head2 Tags => ArrayRef[L<Paws::DocDB::Tag>]

The tags to be assigned to the DB cluster snapshot.



=head2 B<REQUIRED> TargetDBClusterSnapshotIdentifier => Str

The identifier of the new DB cluster snapshot to create from the source
DB cluster snapshot. This parameter is not case sensitive.

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

