# Generated from json/callresult_class.tt

package Paws::Lightsail::GetAutoSnapshotsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Lightsail::Types qw/Lightsail_AutoSnapshotDetails/;
  has AutoSnapshots => (is => 'ro', isa => ArrayRef[Lightsail_AutoSnapshotDetails]);
  has ResourceName => (is => 'ro', isa => Str);
  has ResourceType => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ResourceName' => {
                                   'type' => 'Str'
                                 },
               'AutoSnapshots' => {
                                    'class' => 'Paws::Lightsail::AutoSnapshotDetails',
                                    'type' => 'ArrayRef[Lightsail_AutoSnapshotDetails]'
                                  },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ResourceType' => {
                                   'type' => 'Str'
                                 }
             },
  'NameInRequest' => {
                       'ResourceName' => 'resourceName',
                       'AutoSnapshots' => 'autoSnapshots',
                       'ResourceType' => 'resourceType'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetAutoSnapshotsResult

=head1 ATTRIBUTES


=head2 AutoSnapshots => ArrayRef[Lightsail_AutoSnapshotDetails]

An array of objects that describe the automatic snapshots that are
available for the specified source resource.asdf


=head2 ResourceName => Str

The name of the source resource for the automatic snapshots.


=head2 ResourceType => Str

The resource type (e.g., C<Instance> or C<Disk>).

Valid values are: C<"Instance">, C<"StaticIp">, C<"KeyPair">, C<"InstanceSnapshot">, C<"Domain">, C<"PeeredVpc">, C<"LoadBalancer">, C<"LoadBalancerTlsCertificate">, C<"Disk">, C<"DiskSnapshot">, C<"RelationalDatabase">, C<"RelationalDatabaseSnapshot">, C<"ExportSnapshotRecord">, C<"CloudFormationStackRecord">
=head2 _request_id => Str


=cut

1;