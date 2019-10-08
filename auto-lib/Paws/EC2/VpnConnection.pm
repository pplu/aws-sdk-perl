package Paws::EC2::VpnConnection;
  use Moo;  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_VpnStaticRoute EC2_Tag EC2_VgwTelemetry EC2_VpnConnectionOptions/;
  has Category => (is => 'ro', isa => Str);
  has CustomerGatewayConfiguration => (is => 'ro', isa => Str);
  has CustomerGatewayId => (is => 'ro', isa => Str);
  has Options => (is => 'ro', isa => EC2_VpnConnectionOptions);
  has Routes => (is => 'ro', isa => ArrayRef[EC2_VpnStaticRoute]);
  has State => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => ArrayRef[EC2_Tag]);
  has TransitGatewayId => (is => 'ro', isa => Str);
  has Type => (is => 'ro', isa => Str);
  has VgwTelemetry => (is => 'ro', isa => ArrayRef[EC2_VgwTelemetry]);
  has VpnConnectionId => (is => 'ro', isa => Str);
  has VpnGatewayId => (is => 'ro', isa => Str);

      sub params_map {
    our $Params_map ||= {
  'types' => {
               'VgwTelemetry' => {
                                   'class' => 'Paws::EC2::VgwTelemetry',
                                   'type' => 'ArrayRef[EC2_VgwTelemetry]'
                                 },
               'Options' => {
                              'class' => 'Paws::EC2::VpnConnectionOptions',
                              'type' => 'EC2_VpnConnectionOptions'
                            },
               'CustomerGatewayId' => {
                                        'type' => 'Str'
                                      },
               'VpnConnectionId' => {
                                      'type' => 'Str'
                                    },
               'State' => {
                            'type' => 'Str'
                          },
               'CustomerGatewayConfiguration' => {
                                                   'type' => 'Str'
                                                 },
               'TransitGatewayId' => {
                                       'type' => 'Str'
                                     },
               'Type' => {
                           'type' => 'Str'
                         },
               'VpnGatewayId' => {
                                   'type' => 'Str'
                                 },
               'Routes' => {
                             'class' => 'Paws::EC2::VpnStaticRoute',
                             'type' => 'ArrayRef[EC2_VpnStaticRoute]'
                           },
               'Tags' => {
                           'class' => 'Paws::EC2::Tag',
                           'type' => 'ArrayRef[EC2_Tag]'
                         },
               'Category' => {
                               'type' => 'Str'
                             }
             },
  'NameInRequest' => {
                       'VgwTelemetry' => 'vgwTelemetry',
                       'Options' => 'options',
                       'CustomerGatewayId' => 'customerGatewayId',
                       'VpnConnectionId' => 'vpnConnectionId',
                       'State' => 'state',
                       'CustomerGatewayConfiguration' => 'customerGatewayConfiguration',
                       'TransitGatewayId' => 'transitGatewayId',
                       'Type' => 'type',
                       'VpnGatewayId' => 'vpnGatewayId',
                       'Routes' => 'routes',
                       'Tags' => 'tagSet',
                       'Category' => 'category'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::VpnConnection

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::VpnConnection object:

  $service_obj->Method(Att1 => { Category => $value, ..., VpnGatewayId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::VpnConnection object:

  $result = $service_obj->Method(...);
  $result->Att1->Category

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Category => Str

  The category of the VPN connection. A value of C<VPN> indicates an AWS
VPN connection. A value of C<VPN-Classic> indicates an AWS Classic VPN
connection.


=head2 CustomerGatewayConfiguration => Str

  The configuration information for the VPN connection's customer gateway
(in the native XML format). This element is always present in the
CreateVpnConnection response; however, it's present in the
DescribeVpnConnections response only if the VPN connection is in the
C<pending> or C<available> state.


=head2 CustomerGatewayId => Str

  The ID of the customer gateway at your end of the VPN connection.


=head2 Options => EC2_VpnConnectionOptions

  The VPN connection options.


=head2 Routes => ArrayRef[EC2_VpnStaticRoute]

  The static routes associated with the VPN connection.


=head2 State => Str

  The current state of the VPN connection.


=head2 Tags => ArrayRef[EC2_Tag]

  Any tags assigned to the VPN connection.


=head2 TransitGatewayId => Str

  The ID of the transit gateway associated with the VPN connection.


=head2 Type => Str

  The type of VPN connection.


=head2 VgwTelemetry => ArrayRef[EC2_VgwTelemetry]

  Information about the VPN tunnel.


=head2 VpnConnectionId => Str

  The ID of the VPN connection.


=head2 VpnGatewayId => Str

  The ID of the virtual private gateway at the AWS side of the VPN
connection.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
