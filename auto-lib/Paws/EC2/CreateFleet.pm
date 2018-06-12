
package Paws::EC2::CreateFleet;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has ExcessCapacityTerminationPolicy => (is => 'ro', isa => 'Str');
  has LaunchTemplateConfigs => (is => 'ro', isa => 'ArrayRef[Paws::EC2::FleetLaunchTemplateConfigRequest]', required => 1);
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

As an example:

  $service_obj->CreateFleet(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/CreateFleet>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier you provide to ensure the idempotency
of the request. For more information, see Ensuring Idempotency
(http://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).



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



=head2 ReplaceUnhealthyInstances => Bool

Indicates whether EC2 Fleet should replace unhealthy instances.



=head2 SpotOptions => L<Paws::EC2::SpotOptionsRequest>

Includes C<SpotAllocationStrategy> and
C<SpotInstanceInterruptionBehavior> inside this structure.



=head2 TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]

The tags for an EC2 Fleet resource.



=head2 B<REQUIRED> TargetCapacitySpecification => L<Paws::EC2::TargetCapacitySpecificationRequest>

The C<TotalTargetCapacity>, C<OnDemandTargetCapacity>,
C<SpotTargetCapacity>, and C<DefaultCapacityType> structure.



=head2 TerminateInstancesWithExpiration => Bool

Indicates whether running instances should be terminated when the EC2
Fleet expires.



=head2 Type => Str

The type of request. Indicates whether the EC2 Fleet only C<requests>
the target capacity, or also attempts to C<maintain> it. If you request
a certain target capacity, EC2 Fleet only places the required requests.
It does not attempt to replenish instances if capacity is diminished,
and does not submit requests in alternative capacity pools if capacity
is unavailable. To maintain a certain target capacity, EC2 Fleet places
the required requests to meet this target capacity. It also
automatically replenishes any interrupted Spot Instances. Default:
C<maintain>.

Valid values are: C<"request">, C<"maintain">

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

