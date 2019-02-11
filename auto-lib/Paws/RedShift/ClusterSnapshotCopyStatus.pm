package Paws::RedShift::ClusterSnapshotCopyStatus;
  use Moose;
  has DestinationRegion => (is => 'ro', isa => 'Str');
  has ManualSnapshotRetentionPeriod => (is => 'ro', isa => 'Int');
  has RetentionPeriod => (is => 'ro', isa => 'Int');
  has SnapshotCopyGrantName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::ClusterSnapshotCopyStatus

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RedShift::ClusterSnapshotCopyStatus object:

  $service_obj->Method(Att1 => { DestinationRegion => $value, ..., SnapshotCopyGrantName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RedShift::ClusterSnapshotCopyStatus object:

  $result = $service_obj->Method(...);
  $result->Att1->DestinationRegion

=head1 DESCRIPTION

Returns the destination region and retention period that are configured
for cross-region snapshot copy.

=head1 ATTRIBUTES


=head2 DestinationRegion => Str

  The destination region that snapshots are automatically copied to when
cross-region snapshot copy is enabled.


=head2 ManualSnapshotRetentionPeriod => Int

  The number of days that automated snapshots are retained in the
destination region after they are copied from a source region. If the
value is -1, the manual snapshot is retained indefinitely.

The value must be either -1 or an integer between 1 and 3,653.


=head2 RetentionPeriod => Int

  The number of days that automated snapshots are retained in the
destination region after they are copied from a source region.


=head2 SnapshotCopyGrantName => Str

  The name of the snapshot copy grant.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

