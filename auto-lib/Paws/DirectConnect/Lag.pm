# Generated from json/callresult_class.tt

package Paws::DirectConnect::Lag;
  use Moo;
  use Types::Standard qw/Str Bool ArrayRef Int/;
  use Paws::DirectConnect::Types qw/DirectConnect_Tag DirectConnect_Connection/;
  has AllowsHostedConnections => (is => 'ro', isa => Bool);
  has AwsDevice => (is => 'ro', isa => Str);
  has AwsDeviceV2 => (is => 'ro', isa => Str);
  has Connections => (is => 'ro', isa => ArrayRef[DirectConnect_Connection]);
  has ConnectionsBandwidth => (is => 'ro', isa => Str);
  has HasLogicalRedundancy => (is => 'ro', isa => Str);
  has JumboFrameCapable => (is => 'ro', isa => Bool);
  has LagId => (is => 'ro', isa => Str);
  has LagName => (is => 'ro', isa => Str);
  has LagState => (is => 'ro', isa => Str);
  has Location => (is => 'ro', isa => Str);
  has MinimumLinks => (is => 'ro', isa => Int);
  has NumberOfConnections => (is => 'ro', isa => Int);
  has OwnerAccount => (is => 'ro', isa => Str);
  has Region => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => ArrayRef[DirectConnect_Tag]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'HasLogicalRedundancy' => {
                                           'type' => 'Str'
                                         },
               'LagState' => {
                               'type' => 'Str'
                             },
               'AwsDeviceV2' => {
                                  'type' => 'Str'
                                },
               'OwnerAccount' => {
                                   'type' => 'Str'
                                 },
               'LagId' => {
                            'type' => 'Str'
                          },
               'Location' => {
                               'type' => 'Str'
                             },
               'Region' => {
                             'type' => 'Str'
                           },
               'JumboFrameCapable' => {
                                        'type' => 'Bool'
                                      },
               'Connections' => {
                                  'class' => 'Paws::DirectConnect::Connection',
                                  'type' => 'ArrayRef[DirectConnect_Connection]'
                                },
               'LagName' => {
                              'type' => 'Str'
                            },
               'NumberOfConnections' => {
                                          'type' => 'Int'
                                        },
               'MinimumLinks' => {
                                   'type' => 'Int'
                                 },
               'AwsDevice' => {
                                'type' => 'Str'
                              },
               'AllowsHostedConnections' => {
                                              'type' => 'Bool'
                                            },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'class' => 'Paws::DirectConnect::Tag',
                           'type' => 'ArrayRef[DirectConnect_Tag]'
                         },
               'ConnectionsBandwidth' => {
                                           'type' => 'Str'
                                         }
             },
  'NameInRequest' => {
                       'HasLogicalRedundancy' => 'hasLogicalRedundancy',
                       'LagState' => 'lagState',
                       'AwsDeviceV2' => 'awsDeviceV2',
                       'OwnerAccount' => 'ownerAccount',
                       'LagId' => 'lagId',
                       'Location' => 'location',
                       'Region' => 'region',
                       'JumboFrameCapable' => 'jumboFrameCapable',
                       'Connections' => 'connections',
                       'LagName' => 'lagName',
                       'NumberOfConnections' => 'numberOfConnections',
                       'MinimumLinks' => 'minimumLinks',
                       'AwsDevice' => 'awsDevice',
                       'AllowsHostedConnections' => 'allowsHostedConnections',
                       'Tags' => 'tags',
                       'ConnectionsBandwidth' => 'connectionsBandwidth'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::Lag

=head1 ATTRIBUTES


=head2 AllowsHostedConnections => Bool

Indicates whether the LAG can host other connections.


=head2 AwsDevice => Str

The AWS Direct Connect endpoint that hosts the LAG.


=head2 AwsDeviceV2 => Str

The AWS Direct Connect endpoint that hosts the LAG.


=head2 Connections => ArrayRef[DirectConnect_Connection]

The connections bundled by the LAG.


=head2 ConnectionsBandwidth => Str

The individual bandwidth of the physical connections bundled by the
LAG. The possible values are 1Gbps and 10Gbps.


=head2 HasLogicalRedundancy => Str

Indicates whether the LAG supports a secondary BGP peer in the same
address family (IPv4/IPv6).

Valid values are: C<"unknown">, C<"yes">, C<"no">
=head2 JumboFrameCapable => Bool

Indicates whether jumbo frames (9001 MTU) are supported.


=head2 LagId => Str

The ID of the LAG.


=head2 LagName => Str

The name of the LAG.


=head2 LagState => Str

The state of the LAG. The following are the possible values:

=over

=item *

C<requested>: The initial state of a LAG. The LAG stays in the
requested state until the Letter of Authorization (LOA) is available.

=item *

C<pending>: The LAG has been approved and is being initialized.

=item *

C<available>: The network link is established and the LAG is ready for
use.

=item *

C<down>: The network link is down.

=item *

C<deleting>: The LAG is being deleted.

=item *

C<deleted>: The LAG is deleted.

=item *

C<unknown>: The state of the LAG is not available.

=back


Valid values are: C<"requested">, C<"pending">, C<"available">, C<"down">, C<"deleting">, C<"deleted">, C<"unknown">
=head2 Location => Str

The location of the LAG.


=head2 MinimumLinks => Int

The minimum number of physical connections that must be operational for
the LAG itself to be operational.


=head2 NumberOfConnections => Int

The number of physical connections bundled by the LAG, up to a maximum
of 10.


=head2 OwnerAccount => Str

The ID of the AWS account that owns the LAG.


=head2 Region => Str

The AWS Region where the connection is located.


=head2 Tags => ArrayRef[DirectConnect_Tag]

Any tags assigned to link aggregation group (LAG).


=head2 _request_id => Str


=cut

1;