# Generated from json/callresult_class.tt

package Paws::DirectConnect::Connection;
  use Moo;
  use Types::Standard qw/Str Bool ArrayRef Int/;
  use Paws::DirectConnect::Types qw/DirectConnect_Tag/;
  has AwsDevice => (is => 'ro', isa => Str);
  has AwsDeviceV2 => (is => 'ro', isa => Str);
  has Bandwidth => (is => 'ro', isa => Str);
  has ConnectionId => (is => 'ro', isa => Str);
  has ConnectionName => (is => 'ro', isa => Str);
  has ConnectionState => (is => 'ro', isa => Str);
  has HasLogicalRedundancy => (is => 'ro', isa => Str);
  has JumboFrameCapable => (is => 'ro', isa => Bool);
  has LagId => (is => 'ro', isa => Str);
  has LoaIssueTime => (is => 'ro', isa => Str);
  has Location => (is => 'ro', isa => Str);
  has OwnerAccount => (is => 'ro', isa => Str);
  has PartnerName => (is => 'ro', isa => Str);
  has Region => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => ArrayRef[DirectConnect_Tag]);
  has Vlan => (is => 'ro', isa => Int);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ConnectionState' => {
                                      'type' => 'Str'
                                    },
               'HasLogicalRedundancy' => {
                                           'type' => 'Str'
                                         },
               'Vlan' => {
                           'type' => 'Int'
                         },
               'ConnectionId' => {
                                   'type' => 'Str'
                                 },
               'Bandwidth' => {
                                'type' => 'Str'
                              },
               'PartnerName' => {
                                  'type' => 'Str'
                                },
               'AwsDeviceV2' => {
                                  'type' => 'Str'
                                },
               'OwnerAccount' => {
                                   'type' => 'Str'
                                 },
               'LoaIssueTime' => {
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
               'ConnectionName' => {
                                     'type' => 'Str'
                                   },
               'AwsDevice' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'class' => 'Paws::DirectConnect::Tag',
                           'type' => 'ArrayRef[DirectConnect_Tag]'
                         }
             },
  'NameInRequest' => {
                       'ConnectionState' => 'connectionState',
                       'HasLogicalRedundancy' => 'hasLogicalRedundancy',
                       'Vlan' => 'vlan',
                       'ConnectionId' => 'connectionId',
                       'Bandwidth' => 'bandwidth',
                       'PartnerName' => 'partnerName',
                       'AwsDeviceV2' => 'awsDeviceV2',
                       'OwnerAccount' => 'ownerAccount',
                       'LoaIssueTime' => 'loaIssueTime',
                       'LagId' => 'lagId',
                       'Location' => 'location',
                       'Region' => 'region',
                       'JumboFrameCapable' => 'jumboFrameCapable',
                       'ConnectionName' => 'connectionName',
                       'AwsDevice' => 'awsDevice',
                       'Tags' => 'tags'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::Connection

=head1 ATTRIBUTES


=head2 AwsDevice => Str

The Direct Connect endpoint on which the physical connection
terminates.


=head2 AwsDeviceV2 => Str

The Direct Connect endpoint on which the physical connection
terminates.


=head2 Bandwidth => Str

The bandwidth of the connection.


=head2 ConnectionId => Str

The ID of the connection.


=head2 ConnectionName => Str

The name of the connection.


=head2 ConnectionState => Str

The state of the connection. The following are the possible values:

=over

=item *

C<ordering>: The initial state of a hosted connection provisioned on an
interconnect. The connection stays in the ordering state until the
owner of the hosted connection confirms or declines the connection
order.

=item *

C<requested>: The initial state of a standard connection. The
connection stays in the requested state until the Letter of
Authorization (LOA) is sent to the customer.

=item *

C<pending>: The connection has been approved and is being initialized.

=item *

C<available>: The network link is up and the connection is ready for
use.

=item *

C<down>: The network link is down.

=item *

C<deleting>: The connection is being deleted.

=item *

C<deleted>: The connection has been deleted.

=item *

C<rejected>: A hosted connection in the C<ordering> state enters the
C<rejected> state if it is deleted by the customer.

=item *

C<unknown>: The state of the connection is not available.

=back


Valid values are: C<"ordering">, C<"requested">, C<"pending">, C<"available">, C<"down">, C<"deleting">, C<"deleted">, C<"rejected">, C<"unknown">
=head2 HasLogicalRedundancy => Str

Indicates whether the connection supports a secondary BGP peer in the
same address family (IPv4/IPv6).

Valid values are: C<"unknown">, C<"yes">, C<"no">
=head2 JumboFrameCapable => Bool

Indicates whether jumbo frames (9001 MTU) are supported.


=head2 LagId => Str

The ID of the LAG.


=head2 LoaIssueTime => Str

The time of the most recent call to DescribeLoa for this connection.


=head2 Location => Str

The location of the connection.


=head2 OwnerAccount => Str

The ID of the AWS account that owns the connection.


=head2 PartnerName => Str

The name of the AWS Direct Connect service provider associated with the
connection.


=head2 Region => Str

The AWS Region where the connection is located.


=head2 Tags => ArrayRef[DirectConnect_Tag]

Any tags assigned to the connection.


=head2 Vlan => Int

The ID of the VLAN.


=head2 _request_id => Str


=cut

1;