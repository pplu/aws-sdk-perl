package Paws::DocDB::DBClusterSnapshot;
  use Moose;
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'AvailabilityZone', traits => ['NameInRequest']);
  has ClusterCreateTime => (is => 'ro', isa => 'Str');
  has DBClusterIdentifier => (is => 'ro', isa => 'Str');
  has DBClusterSnapshotArn => (is => 'ro', isa => 'Str');
  has DBClusterSnapshotIdentifier => (is => 'ro', isa => 'Str');
  has Engine => (is => 'ro', isa => 'Str');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has MasterUsername => (is => 'ro', isa => 'Str');
  has PercentProgress => (is => 'ro', isa => 'Int');
  has Port => (is => 'ro', isa => 'Int');
  has SnapshotCreateTime => (is => 'ro', isa => 'Str');
  has SnapshotType => (is => 'ro', isa => 'Str');
  has SourceDBClusterSnapshotArn => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has StorageEncrypted => (is => 'ro', isa => 'Bool');
  has VpcId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDB::DBClusterSnapshot

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DocDB::DBClusterSnapshot object:

  $service_obj->Method(Att1 => { AvailabilityZones => $value, ..., VpcId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DocDB::DBClusterSnapshot object:

  $result = $service_obj->Method(...);
  $result->Att1->AvailabilityZones

=head1 DESCRIPTION

Detailed information about a DB cluster snapshot.

=head1 ATTRIBUTES


=head2 AvailabilityZones => ArrayRef[Str|Undef]

  Provides the list of Amazon EC2 Availability Zones that instances in
the DB cluster snapshot can be restored in.


=head2 ClusterCreateTime => Str

  Specifies the time when the DB cluster was created, in Universal
Coordinated Time (UTC).


=head2 DBClusterIdentifier => Str

  Specifies the DB cluster identifier of the DB cluster that this DB
cluster snapshot was created from.


=head2 DBClusterSnapshotArn => Str

  The Amazon Resource Name (ARN) for the DB cluster snapshot.


=head2 DBClusterSnapshotIdentifier => Str

  Specifies the identifier for the DB cluster snapshot.


=head2 Engine => Str

  Specifies the name of the database engine.


=head2 EngineVersion => Str

  Provides the version of the database engine for this DB cluster
snapshot.


=head2 KmsKeyId => Str

  If C<StorageEncrypted> is C<true>, the AWS KMS key identifier for the
encrypted DB cluster snapshot.


=head2 MasterUsername => Str

  Provides the master user name for the DB cluster snapshot.


=head2 PercentProgress => Int

  Specifies the percentage of the estimated data that has been
transferred.


=head2 Port => Int

  Specifies the port that the DB cluster was listening on at the time of
the snapshot.


=head2 SnapshotCreateTime => Str

  Provides the time when the snapshot was taken, in UTC.


=head2 SnapshotType => Str

  Provides the type of the DB cluster snapshot.


=head2 SourceDBClusterSnapshotArn => Str

  If the DB cluster snapshot was copied from a source DB cluster
snapshot, the ARN for the source DB cluster snapshot; otherwise, a null
value.


=head2 Status => Str

  Specifies the status of this DB cluster snapshot.


=head2 StorageEncrypted => Bool

  Specifies whether the DB cluster snapshot is encrypted.


=head2 VpcId => Str

  Provides the virtual private cloud (VPC) ID that is associated with the
DB cluster snapshot.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DocDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

