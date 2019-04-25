
package Paws::RedShift::EnableSnapshotCopy;
  use Moose;
  has ClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has DestinationRegion => (is => 'ro', isa => 'Str', required => 1);
  has ManualSnapshotRetentionPeriod => (is => 'ro', isa => 'Int');
  has RetentionPeriod => (is => 'ro', isa => 'Int');
  has SnapshotCopyGrantName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'EnableSnapshotCopy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::EnableSnapshotCopyResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'EnableSnapshotCopyResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::EnableSnapshotCopy - Arguments for method EnableSnapshotCopy on L<Paws::RedShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method EnableSnapshotCopy on the
L<Amazon Redshift|Paws::RedShift> service. Use the attributes of this class
as arguments to method EnableSnapshotCopy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to EnableSnapshotCopy.

=head1 SYNOPSIS

    my $redshift = Paws->service('RedShift');
    my $EnableSnapshotCopyResult = $redshift->EnableSnapshotCopy(
      ClusterIdentifier             => 'MyString',
      DestinationRegion             => 'MyString',
      ManualSnapshotRetentionPeriod => 1,             # OPTIONAL
      RetentionPeriod               => 1,             # OPTIONAL
      SnapshotCopyGrantName         => 'MyString',    # OPTIONAL
    );

    # Results:
    my $Cluster = $EnableSnapshotCopyResult->Cluster;

    # Returns a L<Paws::RedShift::EnableSnapshotCopyResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift/EnableSnapshotCopy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterIdentifier => Str

The unique identifier of the source cluster to copy snapshots from.

Constraints: Must be the valid name of an existing cluster that does
not already have cross-region snapshot copy enabled.



=head2 B<REQUIRED> DestinationRegion => Str

The destination AWS Region that you want to copy snapshots to.

Constraints: Must be the name of a valid AWS Region. For more
information, see Regions and Endpoints
(http://docs.aws.amazon.com/general/latest/gr/rande.html#redshift_region)
in the Amazon Web Services General Reference.



=head2 ManualSnapshotRetentionPeriod => Int

The number of days to retain newly copied snapshots in the destination
AWS Region after they are copied from the source AWS Region. If the
value is -1, the manual snapshot is retained indefinitely.

The value must be either -1 or an integer between 1 and 3,653.



=head2 RetentionPeriod => Int

The number of days to retain automated snapshots in the destination
region after they are copied from the source region.

Default: 7.

Constraints: Must be at least 1 and no more than 35.



=head2 SnapshotCopyGrantName => Str

The name of the snapshot copy grant to use when snapshots of an AWS
KMS-encrypted cluster are copied to the destination region.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method EnableSnapshotCopy in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

