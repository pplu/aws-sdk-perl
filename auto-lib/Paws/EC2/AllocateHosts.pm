
package Paws::EC2::AllocateHosts;
  use Moose;
  has AutoPlacement => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'autoPlacement' );
  has AvailabilityZone => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'availabilityZone' , required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken' );
  has HostRecovery => (is => 'ro', isa => 'Str');
  has InstanceFamily => (is => 'ro', isa => 'Str');
  has InstanceType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'instanceType' );
  has Quantity => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'quantity' , required => 1);
  has TagSpecifications => (is => 'ro', isa => 'ArrayRef[Paws::EC2::TagSpecification]', traits => ['NameInRequest'], request_name => 'TagSpecification' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AllocateHosts');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::AllocateHostsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::AllocateHosts - Arguments for method AllocateHosts on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AllocateHosts on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method AllocateHosts.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AllocateHosts.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $AllocateHostsResult = $ec2->AllocateHosts(
      AvailabilityZone  => 'MyString',
      Quantity          => 1,
      AutoPlacement     => 'on',          # OPTIONAL
      ClientToken       => 'MyString',    # OPTIONAL
      HostRecovery      => 'on',          # OPTIONAL
      InstanceFamily    => 'MyString',    # OPTIONAL
      InstanceType      => 'MyString',    # OPTIONAL
      TagSpecifications => [
        {
          ResourceType => 'client-vpn-endpoint'
          , # values: client-vpn-endpoint, customer-gateway, dedicated-host, dhcp-options, egress-only-internet-gateway, elastic-ip, elastic-gpu, export-image-task, export-instance-task, fleet, fpga-image, host-reservation, image, import-image-task, import-snapshot-task, instance, internet-gateway, key-pair, launch-template, local-gateway-route-table-vpc-association, natgateway, network-acl, network-interface, network-insights-analysis, network-insights-path, placement-group, reserved-instances, route-table, security-group, snapshot, spot-fleet-request, spot-instances-request, subnet, traffic-mirror-filter, traffic-mirror-session, traffic-mirror-target, transit-gateway, transit-gateway-attachment, transit-gateway-connect-peer, transit-gateway-multicast-domain, transit-gateway-route-table, volume, vpc, vpc-peering-connection, vpn-connection, vpn-gateway, vpc-flow-log; OPTIONAL
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
    );

    # Results:
    my $HostIds = $AllocateHostsResult->HostIds;

    # Returns a L<Paws::EC2::AllocateHostsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/AllocateHosts>

=head1 ATTRIBUTES


=head2 AutoPlacement => Str

Indicates whether the host accepts any untargeted instance launches
that match its instance type configuration, or if it only accepts Host
tenancy instance launches that specify its unique host ID. For more
information, see Understanding auto-placement and affinity
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/how-dedicated-hosts-work.html#dedicated-hosts-understanding)
in the I<Amazon EC2 User Guide>.

Default: C<on>

Valid values are: C<"on">, C<"off">

=head2 B<REQUIRED> AvailabilityZone => Str

The Availability Zone in which to allocate the Dedicated Host.



=head2 ClientToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. For more information, see Ensuring
Idempotency
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).



=head2 HostRecovery => Str

Indicates whether to enable or disable host recovery for the Dedicated
Host. Host recovery is disabled by default. For more information, see
Host recovery
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/dedicated-hosts-recovery.html)
in the I<Amazon EC2 User Guide>.

Default: C<off>

Valid values are: C<"on">, C<"off">

=head2 InstanceFamily => Str

Specifies the instance family to be supported by the Dedicated Hosts.
If you specify an instance family, the Dedicated Hosts support multiple
instance types within that instance family.

If you want the Dedicated Hosts to support a specific instance type
only, omit this parameter and specify B<InstanceType> instead. You
cannot specify B<InstanceFamily> and B<InstanceType> in the same
request.



=head2 InstanceType => Str

Specifies the instance type to be supported by the Dedicated Hosts. If
you specify an instance type, the Dedicated Hosts support instances of
the specified instance type only.

If you want the Dedicated Hosts to support multiple instance types in a
specific instance family, omit this parameter and specify
B<InstanceFamily> instead. You cannot specify B<InstanceType> and
B<InstanceFamily> in the same request.



=head2 B<REQUIRED> Quantity => Int

The number of Dedicated Hosts to allocate to your account with these
parameters.



=head2 TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]

The tags to apply to the Dedicated Host during creation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AllocateHosts in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

