
package Paws::Neptune::CopyDBClusterSnapshot;
  use Moose;
  has CopyTags => (is => 'ro', isa => 'Bool');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has PreSignedUrl => (is => 'ro', isa => 'Str');
  has SourceDBClusterSnapshotIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Neptune::Tag]');
  has TargetDBClusterSnapshotIdentifier => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CopyDBClusterSnapshot');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Neptune::CopyDBClusterSnapshotResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CopyDBClusterSnapshotResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptune::CopyDBClusterSnapshot - Arguments for method CopyDBClusterSnapshot on L<Paws::Neptune>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CopyDBClusterSnapshot on the
L<Amazon Neptune|Paws::Neptune> service. Use the attributes of this class
as arguments to method CopyDBClusterSnapshot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CopyDBClusterSnapshot.

=head1 SYNOPSIS

    my $rds = Paws->service('Neptune');
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

    # Returns a L<Paws::Neptune::CopyDBClusterSnapshotResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/CopyDBClusterSnapshot>

=head1 ATTRIBUTES


=head2 CopyTags => Bool

True to copy all tags from the source DB cluster snapshot to the target
DB cluster snapshot, and otherwise false. The default is false.



=head2 KmsKeyId => Str

The AWS AWS KMS key ID for an encrypted DB cluster snapshot. The KMS
key ID is the Amazon Resource Name (ARN), KMS key identifier, or the
KMS key alias for the KMS encryption key.

If you copy an unencrypted DB cluster snapshot and specify a value for
the C<KmsKeyId> parameter, Amazon Neptune encrypts the target DB
cluster snapshot using the specified KMS encryption key.

If you copy an encrypted DB cluster snapshot from your AWS account, you
can specify a value for C<KmsKeyId> to encrypt the copy with a new KMS
encryption key. If you don't specify a value for C<KmsKeyId>, then the
copy of the DB cluster snapshot is encrypted with the same KMS key as
the source DB cluster snapshot.

If you copy an encrypted DB cluster snapshot that is shared from
another AWS account, then you must specify a value for C<KmsKeyId>.

To copy an encrypted DB cluster snapshot to another AWS Region, you
must set C<KmsKeyId> to the KMS key ID you want to use to encrypt the
copy of the DB cluster snapshot in the destination AWS Region. KMS
encryption keys are specific to the AWS Region that they are created
in, and you can't use encryption keys from one AWS Region in another
AWS Region.



=head2 PreSignedUrl => Str

The URL that contains a Signature Version 4 signed request for the
C<CopyDBClusterSnapshot> API action in the AWS Region that contains the
source DB cluster snapshot to copy. The C<PreSignedUrl> parameter must
be used when copying an encrypted DB cluster snapshot from another AWS
Region.

The pre-signed URL must be a valid request for the
C<CopyDBSClusterSnapshot> API action that can be executed in the source
AWS Region that contains the encrypted DB cluster snapshot to be
copied. The pre-signed URL request must contain the following parameter
values:

=over

=item *

C<KmsKeyId> - The AWS KMS key identifier for the key to use to encrypt
the copy of the DB cluster snapshot in the destination AWS Region. This
is the same identifier for both the C<CopyDBClusterSnapshot> action
that is called in the destination AWS Region, and the action contained
in the pre-signed URL.

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
C<arn:aws:rds:us-west-2:123456789012:cluster-snapshot:neptune-cluster1-snapshot-20161115>.

=back

To learn how to generate a Signature Version 4 signed request, see
Authenticating Requests: Using Query Parameters (AWS Signature Version
4)
(http://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html)
and Signature Version 4 Signing Process
(http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).



=head2 B<REQUIRED> SourceDBClusterSnapshotIdentifier => Str

The identifier of the DB cluster snapshot to copy. This parameter is
not case-sensitive.

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



=head2 Tags => ArrayRef[L<Paws::Neptune::Tag>]





=head2 B<REQUIRED> TargetDBClusterSnapshotIdentifier => Str

The identifier of the new DB cluster snapshot to create from the source
DB cluster snapshot. This parameter is not case-sensitive.

Constraints:

=over

=item *

Must contain from 1 to 63 letters, numbers, or hyphens.

=item *

First character must be a letter.

=item *

Cannot end with a hyphen or contain two consecutive hyphens.

=back

Example: C<my-cluster-snapshot2>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CopyDBClusterSnapshot in L<Paws::Neptune>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

