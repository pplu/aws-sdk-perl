
package Paws::Lightsail::GetAutoSnapshotsResult;
  use Moose;
  has AutoSnapshots => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::AutoSnapshotDetails]', traits => ['NameInRequest'], request_name => 'autoSnapshots' );
  has ResourceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceName' );
  has ResourceType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceType' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetAutoSnapshotsResult

=head1 ATTRIBUTES


=head2 AutoSnapshots => ArrayRef[L<Paws::Lightsail::AutoSnapshotDetails>]

An array of objects that describe the automatic snapshots that are
available for the specified source instance or disk.


=head2 ResourceName => Str

The name of the source instance or disk for the automatic snapshots.


=head2 ResourceType => Str

The resource type (e.g., C<Instance> or C<Disk>).

Valid values are: C<"ContainerService">, C<"Instance">, C<"StaticIp">, C<"KeyPair">, C<"InstanceSnapshot">, C<"Domain">, C<"PeeredVpc">, C<"LoadBalancer">, C<"LoadBalancerTlsCertificate">, C<"Disk">, C<"DiskSnapshot">, C<"RelationalDatabase">, C<"RelationalDatabaseSnapshot">, C<"ExportSnapshotRecord">, C<"CloudFormationStackRecord">, C<"Alarm">, C<"ContactMethod">, C<"Distribution">, C<"Certificate">
=head2 _request_id => Str


=cut

1;