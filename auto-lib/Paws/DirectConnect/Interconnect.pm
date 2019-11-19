# Generated from json/callresult_class.tt

package Paws::DirectConnect::Interconnect;
  use Moo;
  use Types::Standard qw/Str Bool ArrayRef/;
  use Paws::DirectConnect::Types qw/DirectConnect_Tag/;
  has AwsDevice => (is => 'ro', isa => Str);
  has AwsDeviceV2 => (is => 'ro', isa => Str);
  has Bandwidth => (is => 'ro', isa => Str);
  has HasLogicalRedundancy => (is => 'ro', isa => Str);
  has InterconnectId => (is => 'ro', isa => Str);
  has InterconnectName => (is => 'ro', isa => Str);
  has InterconnectState => (is => 'ro', isa => Str);
  has JumboFrameCapable => (is => 'ro', isa => Bool);
  has LagId => (is => 'ro', isa => Str);
  has LoaIssueTime => (is => 'ro', isa => Str);
  has Location => (is => 'ro', isa => Str);
  has ProviderName => (is => 'ro', isa => Str);
  has Region => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => ArrayRef[DirectConnect_Tag]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'HasLogicalRedundancy' => 'hasLogicalRedundancy',
                       'Tags' => 'tags',
                       'JumboFrameCapable' => 'jumboFrameCapable',
                       'AwsDevice' => 'awsDevice',
                       'LagId' => 'lagId',
                       'InterconnectName' => 'interconnectName',
                       'Location' => 'location',
                       'LoaIssueTime' => 'loaIssueTime',
                       'InterconnectState' => 'interconnectState',
                       'ProviderName' => 'providerName',
                       'AwsDeviceV2' => 'awsDeviceV2',
                       'InterconnectId' => 'interconnectId',
                       'Bandwidth' => 'bandwidth',
                       'Region' => 'region'
                     },
  'types' => {
               'Bandwidth' => {
                                'type' => 'Str'
                              },
               'Region' => {
                             'type' => 'Str'
                           },
               'InterconnectState' => {
                                        'type' => 'Str'
                                      },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'AwsDeviceV2' => {
                                  'type' => 'Str'
                                },
               'ProviderName' => {
                                   'type' => 'Str'
                                 },
               'InterconnectId' => {
                                     'type' => 'Str'
                                   },
               'LagId' => {
                            'type' => 'Str'
                          },
               'InterconnectName' => {
                                       'type' => 'Str'
                                     },
               'Location' => {
                               'type' => 'Str'
                             },
               'LoaIssueTime' => {
                                   'type' => 'Str'
                                 },
               'HasLogicalRedundancy' => {
                                           'type' => 'Str'
                                         },
               'Tags' => {
                           'type' => 'ArrayRef[DirectConnect_Tag]',
                           'class' => 'Paws::DirectConnect::Tag'
                         },
               'JumboFrameCapable' => {
                                        'type' => 'Bool'
                                      },
               'AwsDevice' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::Interconnect

=head1 ATTRIBUTES


=head2 AwsDevice => Str

The Direct Connect endpoint on which the physical connection
terminates.


=head2 AwsDeviceV2 => Str

The Direct Connect endpoint on which the physical connection
terminates.


=head2 Bandwidth => Str

The bandwidth of the connection.


=head2 HasLogicalRedundancy => Str

Indicates whether the interconnect supports a secondary BGP in the same
address family (IPv4/IPv6).

Valid values are: C<"unknown">, C<"yes">, C<"no">
=head2 InterconnectId => Str

The ID of the interconnect.


=head2 InterconnectName => Str

The name of the interconnect.


=head2 InterconnectState => Str

The state of the interconnect. The following are the possible values:

=over

=item *

C<requested>: The initial state of an interconnect. The interconnect
stays in the requested state until the Letter of Authorization (LOA) is
sent to the customer.

=item *

C<pending>: The interconnect is approved, and is being initialized.

=item *

C<available>: The network link is up, and the interconnect is ready for
use.

=item *

C<down>: The network link is down.

=item *

C<deleting>: The interconnect is being deleted.

=item *

C<deleted>: The interconnect is deleted.

=item *

C<unknown>: The state of the interconnect is not available.

=back


Valid values are: C<"requested">, C<"pending">, C<"available">, C<"down">, C<"deleting">, C<"deleted">, C<"unknown">
=head2 JumboFrameCapable => Bool

Indicates whether jumbo frames (9001 MTU) are supported.


=head2 LagId => Str

The ID of the LAG.


=head2 LoaIssueTime => Str

The time of the most recent call to DescribeLoa for this connection.


=head2 Location => Str

The location of the connection.


=head2 ProviderName => Str

The name of the service provider associated with the interconnect.


=head2 Region => Str

The AWS Region where the connection is located.


=head2 Tags => ArrayRef[DirectConnect_Tag]

The tags associated with the interconnect.


=head2 _request_id => Str


=cut

1;