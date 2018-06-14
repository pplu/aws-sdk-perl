
package Paws::AutoScalingPlans::UpdateScalingPlan;
  use Moose;
  has ApplicationSource => (is => 'ro', isa => 'Paws::AutoScalingPlans::ApplicationSource');
  has ScalingInstructions => (is => 'ro', isa => 'ArrayRef[Paws::AutoScalingPlans::ScalingInstruction]');
  has ScalingPlanName => (is => 'ro', isa => 'Str', required => 1);
  has ScalingPlanVersion => (is => 'ro', isa => 'Int', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateScalingPlan');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AutoScalingPlans::UpdateScalingPlanResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScalingPlans::UpdateScalingPlan - Arguments for method UpdateScalingPlan on L<Paws::AutoScalingPlans>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateScalingPlan on the
L<AWS Auto Scaling Plans|Paws::AutoScalingPlans> service. Use the attributes of this class
as arguments to method UpdateScalingPlan.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateScalingPlan.

=head1 SYNOPSIS

    my $autoscaling = Paws->service('AutoScalingPlans');
    my $UpdateScalingPlanResponse = $autoscaling->UpdateScalingPlan(
      ScalingPlanName    => 'MyScalingPlanName',
      ScalingPlanVersion => 1,
      ApplicationSource  => {
        TagFilters => [
          {
            Values => [
              'MyXmlStringMaxLen256', ...    # min: 1, max: 256
            ],                               # OPTIONAL
            Key => 'MyXmlStringMaxLen128',   # min: 1, max: 128; OPTIONAL
          },
          ...
        ],                                   # OPTIONAL
        CloudFormationStackARN => 'MyXmlString',    # OPTIONAL
      },    # OPTIONAL
      ScalingInstructions => [
        {
          TargetTrackingConfigurations => [
            {
              TargetValue                          => 1,
              ScaleInCooldown                      => 1,    # OPTIONAL
              EstimatedInstanceWarmup              => 1,    # OPTIONAL
              ScaleOutCooldown                     => 1,    # OPTIONAL
              PredefinedScalingMetricSpecification => {
                PredefinedScalingMetricType => 'ASGAverageCPUUtilization'
                , # values: ASGAverageCPUUtilization, ASGAverageNetworkIn, ASGAverageNetworkOut, DynamoDBReadCapacityUtilization, DynamoDBWriteCapacityUtilization, ECSServiceAverageCPUUtilization, ECSServiceAverageMemoryUtilization, ALBRequestCountPerTarget, RDSReaderAverageCPUUtilization, RDSReaderAverageDatabaseConnections, EC2SpotFleetRequestAverageCPUUtilization, EC2SpotFleetRequestAverageNetworkIn, EC2SpotFleetRequestAverageNetworkOut
                ResourceLabel =>
                  'MyResourceLabel',    # min: 1, max: 1023; OPTIONAL
              },    # OPTIONAL
              CustomizedScalingMetricSpecification => {
                Statistic => 'Average'
                ,    # values: Average, Minimum, Maximum, SampleCount, Sum
                Namespace  => 'MyMetricNamespace',
                MetricName => 'MyMetricName',
                Dimensions => [
                  {
                    Value => 'MyMetricDimensionValue',
                    Name  => 'MyMetricDimensionName',

                  },
                  ...
                ],    # OPTIONAL
                Unit => 'MyMetricUnit',    # OPTIONAL
              },    # OPTIONAL
              DisableScaleIn => 1,    # OPTIONAL
            },
            ...
          ],
          MaxCapacity => 1,
          ResourceId  => 'MyResourceIdMaxLen1600',    # min: 1, max: 1600
          ScalableDimension => 'autoscaling:autoScalingGroup:DesiredCapacity'
          , # values: autoscaling:autoScalingGroup:DesiredCapacity, ecs:service:DesiredCount, ec2:spot-fleet-request:TargetCapacity, rds:cluster:ReadReplicaCount, dynamodb:table:ReadCapacityUnits, dynamodb:table:WriteCapacityUnits, dynamodb:index:ReadCapacityUnits, dynamodb:index:WriteCapacityUnits
          ServiceNamespace =>
            'autoscaling',    # values: autoscaling, ecs, ec2, rds, dynamodb
          MinCapacity => 1,

        },
        ...
      ],                      # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 ApplicationSource => L<Paws::AutoScalingPlans::ApplicationSource>

A CloudFormation stack or set of tags.



=head2 ScalingInstructions => ArrayRef[L<Paws::AutoScalingPlans::ScalingInstruction>]

The scaling instructions.



=head2 B<REQUIRED> ScalingPlanName => Str

The name of the scaling plan.



=head2 B<REQUIRED> ScalingPlanVersion => Int

The version number.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateScalingPlan in L<Paws::AutoScalingPlans>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

