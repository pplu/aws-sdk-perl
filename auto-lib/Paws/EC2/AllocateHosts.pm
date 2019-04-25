
package Paws::EC2::AllocateHosts;
  use Moose;
  has AutoPlacement => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'autoPlacement' );
  has AvailabilityZone => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'availabilityZone' , required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken' );
  has InstanceType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'instanceType' , required => 1);
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
      InstanceType      => 'MyString',
      Quantity          => 1,
      AutoPlacement     => 'on',          # OPTIONAL
      ClientToken       => 'MyString',    # OPTIONAL
      TagSpecifications => [
        {
          ResourceType => 'customer-gateway'
          , # values: customer-gateway, dedicated-host, dhcp-options, elastic-ip, fleet, fpga-image, image, instance, internet-gateway, launch-template, natgateway, network-acl, network-interface, reserved-instances, route-table, security-group, snapshot, spot-instances-request, subnet, transit-gateway, transit-gateway-attachment, transit-gateway-route-table, volume, vpc, vpc-peering-connection, vpn-connection, vpn-gateway; OPTIONAL
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

This is enabled by default. This property allows instances to be
automatically placed onto available Dedicated Hosts, when you are
launching instances without specifying a host ID.

Default: Enabled

Valid values are: C<"on">, C<"off">

=head2 B<REQUIRED> AvailabilityZone => Str

The Availability Zone for the Dedicated Hosts.



=head2 ClientToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. For more information, see How to Ensure
Idempotency
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html)
in the I<Amazon Elastic Compute Cloud User Guide>.



=head2 B<REQUIRED> InstanceType => Str

Specify the instance type for which to configure your Dedicated Hosts.
When you specify the instance type, that is the only instance type that
you can launch onto that host.



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

