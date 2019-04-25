
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

Paws::ElastiCache::CopySnapshot - Arguments for method CopySnapshot on L<Paws::ElastiCache>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CopySnapshot on the
L<Amazon ElastiCache|Paws::ElastiCache> service. Use the attributes of this class
as arguments to method CopySnapshot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CopySnapshot.

=head1 SYNOPSIS

    my $elasticache = Paws->service('ElastiCache');
    my $CopySnapshotResult = $elasticache->CopySnapshot(
      SourceSnapshotName => 'MyString',
      TargetSnapshotName => 'MyString',
      TargetBucket       => 'MyString',    # OPTIONAL
    );

    # Results:
    my $Snapshot = $CopySnapshotResult->Snapshot;

    # Returns a L<Paws::ElastiCache::CopySnapshotResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticache/CopySnapshot>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SourceSnapshotName => Str

The name of an existing snapshot from which to make a copy.



=head2 TargetBucket => Str

The Amazon S3 bucket to which the snapshot is exported. This parameter
is used only when exporting a snapshot for external access.

When using this parameter to export a snapshot, be sure Amazon
ElastiCache has the needed permissions to this S3 bucket. For more
information, see Step 2: Grant ElastiCache Access to Your Amazon S3
Bucket
(http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Snapshots.Exporting.html#Snapshots.Exporting.GrantAccess)
in the I<Amazon ElastiCache User Guide>.

For more information, see Exporting a Snapshot
(http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Snapshots.Exporting.html)
in the I<Amazon ElastiCache User Guide>.



=head2 B<REQUIRED> TargetSnapshotName => Str

A name for the snapshot copy. ElastiCache does not permit overwriting a
snapshot, therefore this name must be unique within its context -
ElastiCache or an Amazon S3 bucket if exporting.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CopySnapshot in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

