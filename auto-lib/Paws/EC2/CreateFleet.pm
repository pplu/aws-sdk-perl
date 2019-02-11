
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
            LaunchTemplateId => 'MyString',    # OPTIONAL
            LaunchTemplateName =>
              'MyLaunchTemplateName',          # min: 3, max: 128; OPTIONAL
            Version => 'MyString',             # OPTIONAL
          },    # OPTIONAL
          Overrides => [
            {
              AvailabilityZone => 'MyString',    # OPTIONAL
              InstanceType     => 't1.micro'
              , # values: t1.micro, t2.nano, t2.micro, t2.small, t2.medium, t2.large, t2.xlarge, t2.2xlarge, t3.nano, t3.micro, t3.small, t3.medium, t3.large, t3.xlarge, t3.2xlarge, m1.small, m1.medium, m1.large, m1.xlarge, m3.medium, m3.large, m3.xlarge, m3.2xlarge, m4.large, m4.xlarge, m4.2xlarge, m4.4xlarge, m4.10xlarge, m4.16xlarge, m2.xlarge, m2.2xlarge, m2.4xlarge, cr1.8xlarge, r3.large, r3.xlarge, r3.2xlarge, r3.4xlarge, r3.8xlarge, r4.large, r4.xlarge, r4.2xlarge, r4.4xlarge, r4.8xlarge, r4.16xlarge, r5.large, r5.xlarge, r5.2xlarge, r5.4xlarge, r5.12xlarge, r5.24xlarge, r5.metal, r5a.large, r5a.xlarge, r5a.2xlarge, r5a.4xlarge, r5a.12xlarge, r5a.24xlarge, r5d.large, r5d.xlarge, r5d.2xlarge, r5d.4xlarge, r5d.12xlarge, r5d.24xlarge, r5d.metal, x1.16xlarge, x1.32xlarge, x1e.xlarge, x1e.2xlarge, x1e.4xlarge, x1e.8xlarge, x1e.16xlarge, x1e.32xlarge, i2.xlarge, i2.2xlarge, i2.4xlarge, i2.8xlarge, i3.large, i3.xlarge, i3.2xlarge, i3.4xlarge, i3.8xlarge, i3.16xlarge, i3.metal, hi1.4xlarge, hs1.8xlarge, c1.medium, c1.xlarge, c3.large, c3.xlarge, c3.2xlarge, c3.4xlarge, c3.8xlarge, c4.large, c4.xlarge, c4.2xlarge, c4.4xlarge, c4.8xlarge, c5.large, c5.xlarge, c5.2xlarge, c5.4xlarge, c5.9xlarge, c5.18xlarge, c5d.large, c5d.xlarge, c5d.2xlarge, c5d.4xlarge, c5d.9xlarge, c5d.18xlarge, c5n.large, c5n.xlarge, c5n.2xlarge, c5n.4xlarge, c5n.9xlarge, c5n.18xlarge, cc1.4xlarge, cc2.8xlarge, g2.2xlarge, g2.8xlarge, g3.4xlarge, g3.8xlarge, g3.16xlarge, g3s.xlarge, cg1.4xlarge, p2.xlarge, p2.8xlarge, p2.16xlarge, p3.2xlarge, p3.8xlarge, p3.16xlarge, p3dn.24xlarge, d2.xlarge, d2.2xlarge, d2.4xlarge, d2.8xlarge, f1.2xlarge, f1.4xlarge, f1.16xlarge, m5.large, m5.xlarge, m5.2xlarge, m5.4xlarge, m5.12xlarge, m5.24xlarge, m5a.large, m5a.xlarge, m5a.2xlarge, m5a.4xlarge, m5a.12xlarge, m5a.24xlarge, m5d.large, m5d.xlarge, m5d.2xlarge, m5d.4xlarge, m5d.12xlarge, m5d.24xlarge, h1.2xlarge, h1.4xlarge, h1.8xlarge, h1.16xlarge, z1d.large, z1d.xlarge, z1d.2xlarge, z1d.3xlarge, z1d.6xlarge, z1d.12xlarge, u-6tb1.metal, u-9tb1.metal, u-12tb1.metal, a1.medium, a1.large, a1.xlarge, a1.2xlarge, a1.4xlarge; OPTIONAL
              MaxPrice  => 'MyString',    # OPTIONAL
              Placement => {
                Affinity         => 'MyString',    # OPTIONAL
                AvailabilityZone => 'MyString',    # OPTIONAL
                GroupName        => 'MyString',    # OPTIONAL
                HostId           => 'MyString',    # OPTIONAL
                PartitionNumber  => 1,             # OPTIONAL
                SpreadDomain     => 'MyString',    # OPTIONAL
                Tenancy =>
                  'default',    # values: default, dedicated, host; OPTIONAL
              },    # OPTIONAL
              Priority         => 1,             # OPTIONAL
              SubnetId         => 'MyString',    # OPTIONAL
              WeightedCapacity => 1,             # OPTIONAL
            },
            ...
          ],                                     # max: 50; OPTIONAL
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
        MinTargetCapacity      => 1,    # OPTIONAL
        SingleAvailabilityZone => 1,
        SingleInstanceType     => 1,
      },    # OPTIONAL
      ReplaceUnhealthyInstances => 1,    # OPTIONAL
      SpotOptions               => {
        AllocationStrategy =>
          'lowest-price',    # values: lowest-price, diversified; OPTIONAL
        InstanceInterruptionBehavior =>
          'hibernate',       # values: hibernate, stop, terminate; OPTIONAL
        InstancePoolsToUseCount => 1,    # OPTIONAL
        MinTargetCapacity       => 1,    # OPTIONAL
        SingleAvailabilityZone  => 1,
        SingleInstanceType      => 1,
      },    # OPTIONAL
      TagSpecifications => [
        {
          ResourceType => 'customer-gateway'
          , # values: customer-gateway, dedicated-host, dhcp-options, elastic-ip, fleet, fpga-image, image, instance, internet-gateway, launch-template, natgateway, network-acl, network-interface, reserved-instances, route-table, security-group, snapshot, spot-instances-request, subnet, transit-gateway, transit-gateway-attachment, transit-gateway-route-table, volume, vpc, vpc-peering-connection, vpn-connection, vpn-gateway; OPTIONAL
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

Unique, case-sensitive identifier you provide to ensure the idempotency
of the request. For more information, see Ensuring Idempotency
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

The allocation strategy of On-Demand Instances in an EC2 Fleet.



=head2 ReplaceUnhealthyInstances => Bool

Indicates whether EC2 Fleet should replace unhealthy instances.



=head2 SpotOptions => L<Paws::EC2::SpotOptionsRequest>

Describes the configuration of Spot Instances in an EC2 Fleet.



=head2 TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]

The key-value pair for tagging the EC2 Fleet request on creation. The
value for C<ResourceType> must be C<fleet>, otherwise the fleet request
fails. To tag instances at launch, specify the tags in the launch
template
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-templates.html#create-launch-template).
For information about tagging after launch, see Tagging Your Resources
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html#tag-resources).



=head2 B<REQUIRED> TargetCapacitySpecification => L<Paws::EC2::TargetCapacitySpecificationRequest>

The C<TotalTargetCapacity>, C<OnDemandTargetCapacity>,
C<SpotTargetCapacity>, and C<DefaultCapacityType> structure.



=head2 TerminateInstancesWithExpiration => Bool

Indicates whether running instances should be terminated when the EC2
Fleet expires.



=head2 Type => Str

The type of the request. By default, the EC2 Fleet places an
asynchronous request for your desired capacity, and maintains it by
replenishing interrupted Spot Instances (C<maintain>). A value of
C<instant> places a synchronous one-time request, and returns errors
for any instances that could not be launched. A value of C<request>
places an asynchronous one-time request without maintaining capacity or
submitting requests in alternative capacity pools if capacity is
unavailable. For more information, see EC2 Fleet Request Types
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-fleet-configuration-strategies.html#ec2-fleet-request-type)
in the I<Amazon Elastic Compute Cloud User Guide>.

Valid values are: C<"request">, C<"maintain">, C<"instant">

=head2 ValidFrom => Str

The start date and time of the request, in UTC format (for example,
I<YYYY>-I<MM>-I<DD>TI<HH>:I<MM>:I<SS>Z). The default is to start
fulfilling the request immediately.



=head2 ValidUntil => Str

The end date and time of the request, in UTC format (for example,
I<YYYY>-I<MM>-I<DD>TI<HH>:I<MM>:I<SS>Z). At this point, no new EC2
Fleet requests are placed or able to fulfill the request. The default
end date is 7 days from the current date.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateFleet in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

