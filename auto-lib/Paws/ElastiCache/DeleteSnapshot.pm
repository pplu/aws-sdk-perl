
package Paws::ElastiCache::DeleteSnapshot;
  use Moose;
  has SnapshotName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteSnapshot');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElastiCache::DeleteSnapshotResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteSnapshotResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::DeleteSnapshot - Arguments for method DeleteSnapshot on L<Paws::ElastiCache>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteSnapshot on the
L<Amazon ElastiCache|Paws::ElastiCache> service. Use the attributes of this class
as arguments to method DeleteSnapshot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteSnapshot.

=head1 SYNOPSIS

    my $elasticache = Paws->service('ElastiCache');
    my $DeleteSnapshotResult = $elasticache->DeleteSnapshot(
      SnapshotName => 'MyString',

    );

    # Results:
    my $Snapshot = $DeleteSnapshotResult->Snapshot;

    # Returns a L<Paws::ElastiCache::DeleteSnapshotResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticache/DeleteSnapshot>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SnapshotName => Str

The name of the snapshot to be deleted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteSnapshot in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

