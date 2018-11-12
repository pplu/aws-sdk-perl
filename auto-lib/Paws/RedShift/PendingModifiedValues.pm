package Paws::RedShift::PendingModifiedValues;
  use Moose;
  has AutomatedSnapshotRetentionPeriod => (is => 'ro', isa => 'Int');
  has ClusterIdentifier => (is => 'ro', isa => 'Str');
  has ClusterType => (is => 'ro', isa => 'Str');
  has ClusterVersion => (is => 'ro', isa => 'Str');
  has EncryptionType => (is => 'ro', isa => 'Str');
  has EnhancedVpcRouting => (is => 'ro', isa => 'Bool');
  has MaintenanceTrackName => (is => 'ro', isa => 'Str');
  has MasterUserPassword => (is => 'ro', isa => 'Str');
  has NodeType => (is => 'ro', isa => 'Str');
  has NumberOfNodes => (is => 'ro', isa => 'Int');
  has PubliclyAccessible => (is => 'ro', isa => 'Bool');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::PendingModifiedValues

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RedShift::PendingModifiedValues object:

  $service_obj->Method(Att1 => { AutomatedSnapshotRetentionPeriod => $value, ..., PubliclyAccessible => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RedShift::PendingModifiedValues object:

  $result = $service_obj->Method(...);
  $result->Att1->AutomatedSnapshotRetentionPeriod

=head1 DESCRIPTION

Describes cluster attributes that are in a pending state. A change to
one or more the attributes was requested and is in progress or will be
applied.

=head1 ATTRIBUTES


=head2 AutomatedSnapshotRetentionPeriod => Int

  The pending or in-progress change of the automated snapshot retention
period.


=head2 ClusterIdentifier => Str

  The pending or in-progress change of the new identifier for the
cluster.


=head2 ClusterType => Str

  The pending or in-progress change of the cluster type.


=head2 ClusterVersion => Str

  The pending or in-progress change of the service version.


=head2 EncryptionType => Str

  The encryption type for a cluster. Possible values are: KMS and None.
For the China region the possible values are None, and Legacy.


=head2 EnhancedVpcRouting => Bool

  An option that specifies whether to create the cluster with enhanced
VPC routing enabled. To create a cluster that uses enhanced VPC
routing, the cluster must be in a VPC. For more information, see
Enhanced VPC Routing
(http://docs.aws.amazon.com/redshift/latest/mgmt/enhanced-vpc-routing.html)
in the Amazon Redshift Cluster Management Guide.

If this option is C<true>, enhanced VPC routing is enabled.

Default: false


=head2 MaintenanceTrackName => Str

  The name of the maintenance track that the cluster will change to
during the next maintenance window.


=head2 MasterUserPassword => Str

  The pending or in-progress change of the master user password for the
cluster.


=head2 NodeType => Str

  The pending or in-progress change of the cluster's node type.


=head2 NumberOfNodes => Int

  The pending or in-progress change of the number of nodes in the
cluster.


=head2 PubliclyAccessible => Bool

  The pending or in-progress change of the ability to connect to the
cluster from the public network.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

