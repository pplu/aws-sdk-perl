
package Paws::EC2::CreateFleet;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has ExcessCapacityTerminationPolicy => (is => 'ro', isa => 'Str');
  has LaunchTemplateConfigs => (is => 'ro', isa => 'ArrayRef[Paws::EC2::FleetLaunchTemplateConfigRequest]', required => 1);
  has OnDemandOptions => (is => 'ro', isa => 'Paws::EC2::OnDemandOptionsRequest');
  has ReplaceUnhealthyInstances => (is => 'ro', isa => 'Bool');
  has SpotOptions => (is => 'ro', isa => 'Paws::EC2::SpotOptionsRequest');
  has TagSpecifications => (is => 'ro', isa => 'ArrayRef[Paws::EC2::TagSpecification]', traits => ['NameInRequest'], request_name => 'TagSpecification' );
  has TargetCapacitySpecification => (is => 'ro', isa => 'Paws::EC2::TargetCapacitySpecificationRequest', required => 1);
  has TerminateInstancesWithExpiration => (is => 'ro', isa => 'Bool');
  has Type => (is => 'ro', isa => 'Str');
  has ValidFrom => (is => 'ro', isa => 'Str');
  has ValidUntil => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateFleet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::CreateFleetResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateFleet - Arguments for method CreateFleet on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateFleet on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method CreateFleet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateFleet.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $CreateFleetResult = $ec2->CreateFleet(
      LaunchTemplateConfigs => [
        {
          LaunchTemplateSpecification => {
            LaunchTemplateId => 'MyLaunchTemplateId',    # OPTIONAL
            LaunchTemplateName =>
              'MyLaunchTemplateName',    # min: 3, max: 128; OPTIONAL
            Version => 'MyString',       # OPTIONAL
          },    # OPTIONAL
          Overrides => [
            {
              AvailabilityZone => 'MyString',    # OPTIONAL
              InstanceType     => 't1.micro'
              , # values: t1.micro, t2.nano, t2.micro, t2.small, t2.medium, t2.large, t2.xlarge, t2.2xlarge, t3.nano, t3.micro, t3.small, t3.medium, t3.large, t3.xlarge, t3.2xlarge, t3a.nano, t3a.micro, t3a.small, t3a.medium, t3a.large, t3a.xlarge, t3a.2xlarge, t4g.nano, t4g.micro, t4g.small, t4g.medium, t4g.large, t4g.xlarge, t4g.2xlarge, m1.small, m1.medium, m1.large, m1.xlarge, m3.medium, m3.large, m3.xlarge, m3.2xlarge, m4.large, m4.xlarge, m4.2xlarge, m4.4xlarge, m4.10xlarge, m4.16xlarge, m2.xlarge, m2.2xlarge, m2.4xlarge, cr1.8xlarge, r3.large, r3.xlarge, r3.2xlarge, r3.4xlarge, r3.8xlarge, r4.large, r4.xlarge, r4.2xlarge, r4.4xlarge, r4.8xlarge, r4.16xlarge, r5.large, r5.xlarge, r5.2xlarge, r5.4xlarge, r5.8xlarge, r5.12xlarge, r5.16xlarge, r5.24xlarge, r5.metal, r5a.large, r5a.xlarge, r5a.2xlarge, r5a.4xlarge, r5a.8xlarge, r5a.12xlarge, r5a.16xlarge, r5a.24xlarge, r5b.large, r5b.xlarge, r5b.2xlarge, r5b.4xlarge, r5b.8xlarge, r5b.12xlarge, r5b.16xlarge, r5b.24xlarge, r5b.metal, r5d.large, r5d.xlarge, r5d.2xlarge, r5d.4xlarge, r5d.8xlarge, r5d.12xlarge, r5d.16xlarge, r5d.24xlarge, r5d.metal, r5ad.large, r5ad.xlarge, r5ad.2xlarge, r5ad.4xlarge, r5ad.8xlarge, r5ad.12xlarge, r5ad.16xlarge, r5ad.24xlarge, r6g.metal, r6g.medium, r6g.large, r6g.xlarge, r6g.2xlarge, r6g.4xlarge, r6g.8xlarge, r6g.12xlarge, r6g.16xlarge, r6gd.metal, r6gd.medium, r6gd.large, r6gd.xlarge, r6gd.2xlarge, r6gd.4xlarge, r6gd.8xlarge, r6gd.12xlarge, r6gd.16xlarge, x1.16xlarge, x1.32xlarge, x1e.xlarge, x1e.2xlarge, x1e.4xlarge, x1e.8xlarge, x1e.16xlarge, x1e.32xlarge, i2.xlarge, i2.2xlarge, i2.4xlarge, i2.8xlarge, i3.large, i3.xlarge, i3.2xlarge, i3.4xlarge, i3.8xlarge, i3.16xlarge, i3.metal, i3en.large, i3en.xlarge, i3en.2xlarge, i3en.3xlarge, i3en.6xlarge, i3en.12xlarge, i3en.24xlarge, i3en.metal, hi1.4xlarge, hs1.8xlarge, c1.medium, c1.xlarge, c3.large, c3.xlarge, c3.2xlarge, c3.4xlarge, c3.8xlarge, c4.large, c4.xlarge, c4.2xlarge, c4.4xlarge, c4.8xlarge, c5.large, c5.xlarge, c5.2xlarge, c5.4xlarge, c5.9xlarge, c5.12xlarge, c5.18xlarge, c5.24xlarge, c5.metal, c5a.large, c5a.xlarge, c5a.2xlarge, c5a.4xlarge, c5a.8xlarge, c5a.12xlarge, c5a.16xlarge, c5a.24xlarge, c5ad.large, c5ad.xlarge, c5ad.2xlarge, c5ad.4xlarge, c5ad.8xlarge, c5ad.12xlarge, c5ad.16xlarge, c5ad.24xlarge, c5d.large, c5d.xlarge, c5d.2xlarge, c5d.4xlarge, c5d.9xlarge, c5d.12xlarge, c5d.18xlarge, c5d.24xlarge, c5d.metal, c5n.large, c5n.xlarge, c5n.2xlarge, c5n.4xlarge, c5n.9xlarge, c5n.18xlarge, c5n.metal, c6g.metal, c6g.medium, c6g.large, c6g.xlarge, c6g.2xlarge, c6g.4xlarge, c6g.8xlarge, c6g.12xlarge, c6g.16xlarge, c6gd.metal, c6gd.medium, c6gd.large, c6gd.xlarge, c6gd.2xlarge, c6gd.4xlarge, c6gd.8xlarge, c6gd.12xlarge, c6gd.16xlarge, c6gn.medium, c6gn.large, c6gn.xlarge, c6gn.2xlarge, c6gn.4xlarge, c6gn.8xlarge, c6gn.12xlarge, c6gn.16xlarge, cc1.4xlarge, cc2.8xlarge, g2.2xlarge, g2.8xlarge, g3.4xlarge, g3.8xlarge, g3.16xlarge, g3s.xlarge, g4ad.4xlarge, g4ad.8xlarge, g4ad.16xlarge, g4dn.xlarge, g4dn.2xlarge, g4dn.4xlarge, g4dn.8xlarge, g4dn.12xlarge, g4dn.16xlarge, g4dn.metal, cg1.4xlarge, p2.xlarge, p2.8xlarge, p2.16xlarge, p3.2xlarge, p3.8xlarge, p3.16xlarge, p3dn.24xlarge, p4d.24xlarge, d2.xlarge, d2.2xlarge, d2.4xlarge, d2.8xlarge, d3.xlarge, d3.2xlarge, d3.4xlarge, d3.8xlarge, d3en.xlarge, d3en.2xlarge, d3en.4xlarge, d3en.6xlarge, d3en.8xlarge, d3en.12xlarge, f1.2xlarge, f1.4xlarge, f1.16xlarge, m5.large, m5.xlarge, m5.2xlarge, m5.4xlarge, m5.8xlarge, m5.12xlarge, m5.16xlarge, m5.24xlarge, m5.metal, m5a.large, m5a.xlarge, m5a.2xlarge, m5a.4xlarge, m5a.8xlarge, m5a.12xlarge, m5a.16xlarge, m5a.24xlarge, m5d.large, m5d.xlarge, m5d.2xlarge, m5d.4xlarge, m5d.8xlarge, m5d.12xlarge, m5d.16xlarge, m5d.24xlarge, m5d.metal, m5ad.large, m5ad.xlarge, m5ad.2xlarge, m5ad.4xlarge, m5ad.8xlarge, m5ad.12xlarge, m5ad.16xlarge, m5ad.24xlarge, m5zn.large, m5zn.xlarge, m5zn.2xlarge, m5zn.3xlarge, m5zn.6xlarge, m5zn.12xlarge, m5zn.metal, h1.2xlarge, h1.4xlarge, h1.8xlarge, h1.16xlarge, z1d.large, z1d.xlarge, z1d.2xlarge, z1d.3xlarge, z1d.6xlarge, z1d.12xlarge, z1d.metal, u-6tb1.56xlarge, u-6tb1.112xlarge, u-9tb1.112xlarge, u-12tb1.112xlarge, u-6tb1.metal, u-9tb1.metal, u-12tb1.metal, u-18tb1.metal, u-24tb1.metal, a1.medium, a1.large, a1.xlarge, a1.2xlarge, a1.4xlarge, a1.metal, m5dn.large, m5dn.xlarge, m5dn.2xlarge, m5dn.4xlarge, m5dn.8xlarge, m5dn.12xlarge, m5dn.16xlarge, m5dn.24xlarge, m5n.large, m5n.xlarge, m5n.2xlarge, m5n.4xlarge, m5n.8xlarge, m5n.12xlarge, m5n.16xlarge, m5n.24xlarge, r5dn.large, r5dn.xlarge, r5dn.2xlarge, r5dn.4xlarge, r5dn.8xlarge, r5dn.12xlarge, r5dn.16xlarge, r5dn.24xlarge, r5n.large, r5n.xlarge, r5n.2xlarge, r5n.4xlarge, r5n.8xlarge, r5n.12xlarge, r5n.16xlarge, r5n.24xlarge, inf1.xlarge, inf1.2xlarge, inf1.6xlarge, inf1.24xlarge, m6g.metal, m6g.medium, m6g.large, m6g.xlarge, m6g.2xlarge, m6g.4xlarge, m6g.8xlarge, m6g.12xlarge, m6g.16xlarge, m6gd.metal, m6gd.medium, m6gd.large, m6gd.xlarge, m6gd.2xlarge, m6gd.4xlarge, m6gd.8xlarge, m6gd.12xlarge, m6gd.16xlarge, mac1.metal, x2gd.medium, x2gd.large, x2gd.xlarge, x2gd.2xlarge, x2gd.4xlarge, x2gd.8xlarge, x2gd.12xlarge, x2gd.16xlarge, x2gd.metal; OPTIONAL
              MaxPrice  => 'MyString',    # OPTIONAL
              Placement => {
                Affinity             => 'MyString',    # OPTIONAL
                AvailabilityZone     => 'MyString',    # OPTIONAL
                GroupName            => 'MyString',    # OPTIONAL
                HostId               => 'MyString',    # OPTIONAL
                HostResourceGroupArn => 'MyString',    # OPTIONAL
                PartitionNumber      => 1,             # OPTIONAL
                SpreadDomain         => 'MyString',    # OPTIONAL
                Tenancy =>
                  'default',    # values: default, dedicated, host; OPTIONAL
              },    # OPTIONAL
              Priority         => 1,               # OPTIONAL
              SubnetId         => 'MySubnetId',    # OPTIONAL
              WeightedCapacity => 1,               # OPTIONAL
            },
            ...
          ],                                       # OPTIONAL
        },
        ...
      ],
      TargetCapacitySpecification => {
        TotalTargetCapacity       => 1,      # OPTIONAL
        DefaultTargetCapacityType => 'spot', # values: spot, on-demand; OPTIONAL
        OnDemandTargetCapacity    => 1,      # OPTIONAL
        SpotTargetCapacity        => 1,      # OPTIONAL
      },
      ClientToken                     => 'MyString',          # OPTIONAL
      DryRun                          => 1,                   # OPTIONAL
      ExcessCapacityTerminationPolicy => 'no-termination',    # OPTIONAL
      OnDemandOptions                 => {
        AllocationStrategy =>
          'lowest-price',    # values: lowest-price, prioritized; OPTIONAL
        CapacityReservationOptions => {
          UsageStrategy => 'use-capacity-reservations-first'
          ,                  # values: use-capacity-reservations-first; OPTIONAL
        },    # OPTIONAL
        MaxTotalPrice          => 'MyString',    # OPTIONAL
        MinTargetCapacity      => 1,             # OPTIONAL
        SingleAvailabilityZone => 1,
        SingleInstanceType     => 1,
      },    # OPTIONAL
      ReplaceUnhealthyInstances => 1,    # OPTIONAL
      SpotOptions               => {
        AllocationStrategy => 'lowest-price'
        , # values: lowest-price, diversified, capacity-optimized, capacity-optimized-prioritized; OPTIONAL
        InstanceInterruptionBehavior =>
          'hibernate',    # values: hibernate, stop, terminate; OPTIONAL
        InstancePoolsToUseCount => 1,    # OPTIONAL
        MaintenanceStrategies   => {
          CapacityRebalance => {
            ReplacementStrategy => 'launch',    # values: launch; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        MaxTotalPrice          => 'MyString',    # OPTIONAL
        MinTargetCapacity      => 1,             # OPTIONAL
        SingleAvailabilityZone => 1,
        SingleInstanceType     => 1,
      },    # OPTIONAL
      TagSpecifications => [
        {
          ResourceType => 'client-vpn-endpoint'
          , # values: client-vpn-endpoint, customer-gateway, dedicated-host, dhcp-options, egress-only-internet-gateway, elastic-ip, elastic-gpu, export-image-task, export-instance-task, fleet, fpga-image, host-reservation, image, import-image-task, import-snapshot-task, instance, internet-gateway, key-pair, launch-template, local-gateway-route-table-vpc-association, natgateway, network-acl, network-interface, network-insights-analysis, network-insights-path, placement-group, reserved-instances, route-table, security-group, snapshot, spot-fleet-request, spot-instances-request, subnet, traffic-mirror-filter, traffic-mirror-session, traffic-mirror-target, transit-gateway, transit-gateway-attachment, transit-gateway-connect-peer, transit-gateway-multicast-domain, transit-gateway-route-table, volume, vpc, vpc-peering-connection, vpn-connection, vpn-gateway, vpc-flow-log; OPTIONAL
          Tags => [
            {
              Key   => 'MyString',    # OPTIONAL
              Value => 'MyString',    # OPTIONAL
            },
            ...
          ],                          # OPTIONAL
        },
        ...
      ],                              # OPTIONAL
      TerminateInstancesWithExpiration => 1,                        # OPTIONAL
      Type                             => 'request',                # OPTIONAL
      ValidFrom                        => '1970-01-01T01:00:00',    # OPTIONAL
      ValidUntil                       => '1970-01-01T01:00:00',    # OPTIONAL
    );

    # Results:
    my $Errors    = $CreateFleetResult->Errors;
    my $FleetId   = $CreateFleetResult->FleetId;
    my $Instances = $CreateFleetResult->Instances;

    # Returns a L<Paws::EC2::CreateFleetResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/CreateFleet>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. For more information, see Ensuring
Idempotency
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 ExcessCapacityTerminationPolicy => Str

Indicates whether running instances should be terminated if the total
target capacity of the EC2 Fleet is decreased below the current size of
the EC2 Fleet.

Valid values are: C<"no-termination">, C<"termination">

=head2 B<REQUIRED> LaunchTemplateConfigs => ArrayRef[L<Paws::EC2::FleetLaunchTemplateConfigRequest>]

The configuration for the EC2 Fleet.



=head2 OnDemandOptions => L<Paws::EC2::OnDemandOptionsRequest>

Describes the configuration of On-Demand Instances in an EC2 Fleet.



=head2 ReplaceUnhealthyInstances => Bool

Indicates whether EC2 Fleet should replace unhealthy Spot Instances.
Supported only for fleets of type C<maintain>. For more information,
see EC2 Fleet health checks
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/manage-ec2-fleet.html#ec2-fleet-health-checks)
in the I<Amazon EC2 User Guide>.



=head2 SpotOptions => L<Paws::EC2::SpotOptionsRequest>

Describes the configuration of Spot Instances in an EC2 Fleet.



=head2 TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]

The key-value pair for tagging the EC2 Fleet request on creation. The
value for C<ResourceType> must be C<fleet>, otherwise the fleet request
fails. To tag instances at launch, specify the tags in the launch
template
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-templates.html#create-launch-template).
For information about tagging after launch, see Tagging your resources
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html#tag-resources).



=head2 B<REQUIRED> TargetCapacitySpecification => L<Paws::EC2::TargetCapacitySpecificationRequest>

The number of units to request.



=head2 TerminateInstancesWithExpiration => Bool

Indicates whether running instances should be terminated when the EC2
Fleet expires.



=head2 Type => Str

The type of request. The default value is C<maintain>.

=over

=item *

C<maintain> - The EC2 Fleet places an asynchronous request for your
desired capacity, and continues to maintain your desired Spot capacity
by replenishing interrupted Spot Instances.

=item *

C<request> - The EC2 Fleet places an asynchronous one-time request for
your desired capacity, but does submit Spot requests in alternative
capacity pools if Spot capacity is unavailable, and does not maintain
Spot capacity if Spot Instances are interrupted.

=item *

C<instant> - The EC2 Fleet places a synchronous one-time request for
your desired capacity, and returns errors for any instances that could
not be launched.

=back

For more information, see EC2 Fleet request types
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-fleet-configuration-strategies.html#ec2-fleet-request-type)
in the I<Amazon EC2 User Guide>.

Valid values are: C<"request">, C<"maintain">, C<"instant">

=head2 ValidFrom => Str

The start date and time of the request, in UTC format (for example,
I<YYYY>-I<MM>-I<DD>TI<HH>:I<MM>:I<SS>Z). The default is to start
fulfilling the request immediately.



=head2 ValidUntil => Str

The end date and time of the request, in UTC format (for example,
I<YYYY>-I<MM>-I<DD>TI<HH>:I<MM>:I<SS>Z). At this point, no new EC2
Fleet requests are placed or able to fulfill the request. If no value
is specified, the request remains until you cancel it.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateFleet in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

