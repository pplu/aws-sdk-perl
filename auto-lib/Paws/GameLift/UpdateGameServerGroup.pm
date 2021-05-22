
package Paws::GameLift::UpdateGameServerGroup;
  use Moose;
  has BalancingStrategy => (is => 'ro', isa => 'Str');
  has GameServerGroupName => (is => 'ro', isa => 'Str', required => 1);
  has GameServerProtectionPolicy => (is => 'ro', isa => 'Str');
  has InstanceDefinitions => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::InstanceDefinition]');
  has RoleArn => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateGameServerGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::UpdateGameServerGroupOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::UpdateGameServerGroup - Arguments for method UpdateGameServerGroup on L<Paws::GameLift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateGameServerGroup on the
L<Amazon GameLift|Paws::GameLift> service. Use the attributes of this class
as arguments to method UpdateGameServerGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateGameServerGroup.

=head1 SYNOPSIS

    my $gamelift = Paws->service('GameLift');
    my $UpdateGameServerGroupOutput = $gamelift->UpdateGameServerGroup(
      GameServerGroupName        => 'MyGameServerGroupNameOrArn',
      BalancingStrategy          => 'SPOT_ONLY',                    # OPTIONAL
      GameServerProtectionPolicy => 'NO_PROTECTION',                # OPTIONAL
      InstanceDefinitions        => [
        {
          InstanceType => 'c4.large'
          , # values: c4.large, c4.xlarge, c4.2xlarge, c4.4xlarge, c4.8xlarge, c5.large, c5.xlarge, c5.2xlarge, c5.4xlarge, c5.9xlarge, c5.12xlarge, c5.18xlarge, c5.24xlarge, c5a.large, c5a.xlarge, c5a.2xlarge, c5a.4xlarge, c5a.8xlarge, c5a.12xlarge, c5a.16xlarge, c5a.24xlarge, r4.large, r4.xlarge, r4.2xlarge, r4.4xlarge, r4.8xlarge, r4.16xlarge, r5.large, r5.xlarge, r5.2xlarge, r5.4xlarge, r5.8xlarge, r5.12xlarge, r5.16xlarge, r5.24xlarge, r5a.large, r5a.xlarge, r5a.2xlarge, r5a.4xlarge, r5a.8xlarge, r5a.12xlarge, r5a.16xlarge, r5a.24xlarge, m4.large, m4.xlarge, m4.2xlarge, m4.4xlarge, m4.10xlarge, m5.large, m5.xlarge, m5.2xlarge, m5.4xlarge, m5.8xlarge, m5.12xlarge, m5.16xlarge, m5.24xlarge, m5a.large, m5a.xlarge, m5a.2xlarge, m5a.4xlarge, m5a.8xlarge, m5a.12xlarge, m5a.16xlarge, m5a.24xlarge
          WeightedCapacity => 'MyWeightedCapacity',   # min: 1, max: 3; OPTIONAL
        },
        ...
      ],                                              # OPTIONAL
      RoleArn => 'MyIamRoleArn',                      # OPTIONAL
    );

    # Results:
    my $GameServerGroup = $UpdateGameServerGroupOutput->GameServerGroup;

    # Returns a L<Paws::GameLift::UpdateGameServerGroupOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gamelift/UpdateGameServerGroup>

=head1 ATTRIBUTES


=head2 BalancingStrategy => Str

Indicates how GameLift FleetIQ balances the use of Spot Instances and
On-Demand Instances in the game server group. Method options include
the following:

=over

=item *

C<SPOT_ONLY> - Only Spot Instances are used in the game server group.
If Spot Instances are unavailable or not viable for game hosting, the
game server group provides no hosting capacity until Spot Instances can
again be used. Until then, no new instances are started, and the
existing nonviable Spot Instances are terminated (after current
gameplay ends) and are not replaced.

=item *

C<SPOT_PREFERRED> - (default value) Spot Instances are used whenever
available in the game server group. If Spot Instances are unavailable,
the game server group continues to provide hosting capacity by falling
back to On-Demand Instances. Existing nonviable Spot Instances are
terminated (after current gameplay ends) and are replaced with new
On-Demand Instances.

=item *

C<ON_DEMAND_ONLY> - Only On-Demand Instances are used in the game
server group. No Spot Instances are used, even when available, while
this balancing strategy is in force.

=back


Valid values are: C<"SPOT_ONLY">, C<"SPOT_PREFERRED">, C<"ON_DEMAND_ONLY">

=head2 B<REQUIRED> GameServerGroupName => Str

A unique identifier for the game server group. Use either the
GameServerGroup name or ARN value.



=head2 GameServerProtectionPolicy => Str

A flag that indicates whether instances in the game server group are
protected from early termination. Unprotected instances that have
active game servers running might be terminated during a scale-down
event, causing players to be dropped from the game. Protected instances
cannot be terminated while there are active game servers running except
in the event of a forced game server group deletion (see ). An
exception to this is with Spot Instances, which can be terminated by
AWS regardless of protection status. This property is set to
C<NO_PROTECTION> by default.

Valid values are: C<"NO_PROTECTION">, C<"FULL_PROTECTION">

=head2 InstanceDefinitions => ArrayRef[L<Paws::GameLift::InstanceDefinition>]

An updated list of EC2 instance types to use in the Auto Scaling group.
The instance definitions must specify at least two different instance
types that are supported by GameLift FleetIQ. This updated list
replaces the entire current list of instance definitions for the game
server group. For more information on instance types, see EC2 Instance
Types
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html)
in the I<Amazon EC2 User Guide>. You can optionally specify capacity
weighting for each instance type. If no weight value is specified for
an instance type, it is set to the default value "1". For more
information about capacity weighting, see Instance Weighting for Amazon
EC2 Auto Scaling
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-instance-weighting.html)
in the Amazon EC2 Auto Scaling User Guide.



=head2 RoleArn => Str

The Amazon Resource Name (ARN
(https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html))
for an IAM role that allows Amazon GameLift to access your EC2 Auto
Scaling groups.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateGameServerGroup in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

