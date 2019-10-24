
package Paws::EC2::CreateTrafficMirrorSession;
  use Moo;
  use Types::Standard qw/Str Bool Int ArrayRef/;
  use Paws::EC2::Types qw/EC2_TagSpecification/;
  has ClientToken => (is => 'ro', isa => Str, predicate => 1);
  has Description => (is => 'ro', isa => Str, predicate => 1);
  has DryRun => (is => 'ro', isa => Bool, predicate => 1);
  has NetworkInterfaceId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has PacketLength => (is => 'ro', isa => Int, predicate => 1);
  has SessionNumber => (is => 'ro', isa => Int, required => 1, predicate => 1);
  has TagSpecifications => (is => 'ro', isa => ArrayRef[EC2_TagSpecification], predicate => 1);
  has TrafficMirrorFilterId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has TrafficMirrorTargetId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has VirtualNetworkId => (is => 'ro', isa => Int, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateTrafficMirrorSession');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::EC2::CreateTrafficMirrorSessionResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DryRun' => {
                             'type' => 'Bool'
                           },
               'ClientToken' => {
                                  'type' => 'Str'
                                },
               'TrafficMirrorFilterId' => {
                                            'type' => 'Str'
                                          },
               'TagSpecifications' => {
                                        'class' => 'Paws::EC2::TagSpecification',
                                        'type' => 'ArrayRef[EC2_TagSpecification]'
                                      },
               'SessionNumber' => {
                                    'type' => 'Int'
                                  },
               'TrafficMirrorTargetId' => {
                                            'type' => 'Str'
                                          },
               'VirtualNetworkId' => {
                                       'type' => 'Int'
                                     },
               'NetworkInterfaceId' => {
                                         'type' => 'Str'
                                       },
               'Description' => {
                                  'type' => 'Str'
                                },
               'PacketLength' => {
                                   'type' => 'Int'
                                 }
             },
  'NameInRequest' => {
                       'TagSpecifications' => 'TagSpecification'
                     },
  'IsRequired' => {
                    'TrafficMirrorTargetId' => 1,
                    'TrafficMirrorFilterId' => 1,
                    'NetworkInterfaceId' => 1,
                    'SessionNumber' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateTrafficMirrorSession - Arguments for method CreateTrafficMirrorSession on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateTrafficMirrorSession on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method CreateTrafficMirrorSession.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateTrafficMirrorSession.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $CreateTrafficMirrorSessionResult = $ec2->CreateTrafficMirrorSession(
      NetworkInterfaceId    => 'MyString',
      SessionNumber         => 1,
      TrafficMirrorFilterId => 'MyString',
      TrafficMirrorTargetId => 'MyString',
      ClientToken           => 'MyString',    # OPTIONAL
      Description           => 'MyString',    # OPTIONAL
      DryRun                => 1,             # OPTIONAL
      PacketLength          => 1,             # OPTIONAL
      TagSpecifications     => [
        {
          ResourceType => 'client-vpn-endpoint'
          , # values: client-vpn-endpoint, customer-gateway, dedicated-host, dhcp-options, elastic-ip, fleet, fpga-image, host-reservation, image, instance, internet-gateway, launch-template, natgateway, network-acl, network-interface, reserved-instances, route-table, security-group, snapshot, spot-instances-request, subnet, traffic-mirror-filter, traffic-mirror-session, traffic-mirror-target, transit-gateway, transit-gateway-attachment, transit-gateway-route-table, volume, vpc, vpc-peering-connection, vpn-connection, vpn-gateway; OPTIONAL
          Tags => [
            {
              Key   => 'MyString',
              Value => 'MyString',
            },
            ...
          ],    # OPTIONAL
        },
        ...
      ],        # OPTIONAL
      VirtualNetworkId => 1,    # OPTIONAL
    );

    # Results:
    my $ClientToken = $CreateTrafficMirrorSessionResult->ClientToken;
    my $TrafficMirrorSession =
      $CreateTrafficMirrorSessionResult->TrafficMirrorSession;

    # Returns a L<Paws::EC2::CreateTrafficMirrorSessionResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/CreateTrafficMirrorSession>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. For more information, see How to Ensure
Idempotency
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).



=head2 Description => Str

The description of the Traffic Mirror session.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> NetworkInterfaceId => Str

The ID of the source network interface.



=head2 PacketLength => Int

The number of bytes in each packet to mirror. These are bytes after the
VXLAN header. Do not specify this parameter when you want to mirror the
entire packet. To mirror a subset of the packet, set this to the length
(in bytes) that you want to mirror. For example, if you set this value
to 1network0, then the first 100 bytes that meet the filter criteria
are copied to the target.

If you do not want to mirror the entire packet, use the C<PacketLength>
parameter to specify the number of bytes in each packet to mirror.



=head2 B<REQUIRED> SessionNumber => Int

The session number determines the order in which sessions are evaluated
when an interface is used by multiple sessions. The first session with
a matching filter is the one that mirrors the packets.

Valid values are 1-32766.



=head2 TagSpecifications => ArrayRef[EC2_TagSpecification]

The tags to assign to a Traffic Mirror session.



=head2 B<REQUIRED> TrafficMirrorFilterId => Str

The ID of the Traffic Mirror filter.



=head2 B<REQUIRED> TrafficMirrorTargetId => Str

The ID of the Traffic Mirror target.



=head2 VirtualNetworkId => Int

The VXLAN ID for the Traffic Mirror session. For more information about
the VXLAN protocol, see RFC 7348 (https://tools.ietf.org/html/rfc7348).
If you do not specify a C<VirtualNetworkId>, an account-wide unique id
is chosen at random.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateTrafficMirrorSession in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

