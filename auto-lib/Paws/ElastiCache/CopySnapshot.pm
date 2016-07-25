
package Paws::ElastiCache::CopySnapshot;
  use Moose;
  has SourceSnapshotName => (is => 'ro', isa => 'Str', required => 1);
  has TargetBucket => (is => 'ro', isa => 'Str');
  has TargetSnapshotName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CopySnapshot');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElastiCache::CopySnapshotResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CopySnapshotResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::CopySnapshot - Arguments for method CopySnapshot on Paws::ElastiCache

=head1 DESCRIPTION

This class represents the parameters used for calling the method CopySnapshot on the 
Amazon ElastiCache service. Use the attributes of this class
as arguments to method CopySnapshot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CopySnapshot.

As an example:

  $service_obj->CopySnapshot(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> SourceSnapshotName => Str

The name of an existing snapshot from which to make a copy.



=head2 TargetBucket => Str

The Amazon S3 bucket to which the snapshot will be exported. This
parameter is used only when exporting a snapshot for external access.

When using this parameter to export a snapshot, be sure Amazon
ElastiCache has the needed permissions to this S3 bucket. For more
information, see Step 2: Grant ElastiCache Access to Your Amazon S3
Bucket in the I<Amazon ElastiCache User Guide>.

B<Error Messages:>

You could receive one of the following error messages.

B<Erorr Messages>

=over

=item *

B<Error Message: > ElastiCache has not been granted READ permissions %s
on the S3 Bucket.

B<Solution:> Add List and Read permissions on the bucket.

=item *

B<Error Message: > ElastiCache has not been granted WRITE permissions
%s on the S3 Bucket.

B<Solution:> Add Upload/Delete permissions on the bucket.

=item *

B<Error Message: > ElastiCache has not been granted READ_ACP
permissions %s on the S3 Bucket.

B<Solution:> Add View Permissions permissions on the bucket.

=item *

B<Error Message:> The S3 bucket %s is outside of the region.

B<Solution:> Before exporting your snapshot, create a new Amazon S3
bucket in the same region as your snapshot. For more information, see
Step 1: Create an Amazon S3 Bucket.

=item *

B<Error Message:> The S3 bucket %s does not exist.

B<Solution:> Create an Amazon S3 bucket in the same region as your
snapshot. For more information, see Step 1: Create an Amazon S3 Bucket.

=item *

B<Error Message:> The S3 bucket %s is not owned by the authenticated
user.

B<Solution:> Create an Amazon S3 bucket in the same region as your
snapshot. For more information, see Step 1: Create an Amazon S3 Bucket.

=item *

B<Error Message:> The authenticated user does not have sufficient
permissions to perform the desired activity.

B<Solution:> Contact your system administrator to get the needed
permissions.

=back

For more information, see Exporting a Snapshot in the I<Amazon
ElastiCache User Guide>.



=head2 B<REQUIRED> TargetSnapshotName => Str

A name for the snapshot copy. ElastiCache does not permit overwriting a
snapshot, therefore this name must be unique within its context -
ElastiCache or an Amazon S3 bucket if exporting.

B<Error Message>

=over

=item *

B<Error Message:> The S3 bucket %s already contains an object with key
%s.

B<Solution:> Give the I<TargetSnapshotName> a new and unique value. If
exporting a snapshot, you could alternatively create a new Amazon S3
bucket and use this same value for I<TargetSnapshotName>.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CopySnapshot in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

