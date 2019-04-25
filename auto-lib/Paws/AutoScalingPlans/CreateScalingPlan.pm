
package Paws::AutoScalingPlans::CreateScalingPlan;
  use Moose;
  has ApplicationSource => (is => 'ro', isa => 'Paws::AutoScalingPlans::ApplicationSource', required => 1);
  has ScalingInstructions => (is => 'ro', isa => 'ArrayRef[Paws::AutoScalingPlans::ScalingInstruction]', required => 1);
  has ScalingPlanName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateScalingPlan');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AutoScalingPlans::CreateScalingPlanResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScalingPlans::CreateScalingPlan - Arguments for method CreateScalingPlan on L<Paws::AutoScalingPlans>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateScalingPlan on the
L<AWS Auto Scaling Plans|Paws::AutoScalingPlans> service. Use the attributes of this class
as arguments to method CreateScalingPlan.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateScalingPlan.

=head1 SYNOPSIS

    my $autoscaling = Paws->service('AutoScalingPlans');
    my $CreateScalingPlanResponse = $autoscaling->CreateScalingPlan(
      ApplicationSource => {
        CloudFormationStackARN => 'MyXmlString',    # OPTIONAL
        TagFilters             => [
          {
            Key    => 'MyXmlStringMaxLen128',       # min: 1, max: 128; OPTIONAL
            Values => [
              'MyXmlStringMaxLen256', ...           # min: 1, max: 256
            ],                                      # OPTIONAL
          },
          ...
        ],                                          # OPTIONAL
      },
      ScalingInstructions => [
        {
          MaxCapacity => 1,
          MinCapacity => 1,
          ResourceId  => 'MyResourceIdMaxLen1600',    # min: 1, max: 1600
          ScalableDimension => 'autoscaling:autoScalingGroup:DesiredCapacity'
          , # values: autoscaling:autoScalingGroup:DesiredCapacity, ecs:service:DesiredCount, ec2:spot-fleet-request:TargetCapacity, rds:cluster:ReadReplicaCount, dynamodb:table:ReadCapacityUnits, dynamodb:table:WriteCapacityUnits, dynamodb:index:ReadCapacityUnits, dynamodb:index:WriteCapacityUnits
          ServiceNamespace =>
            'autoscaling',    # values: autoscaling, ecs, ec2, rds, dynamodb
          TargetTrackingConfigurations => [
            {
              TargetValue                          => 1,
              CustomizedScalingMetricSpecification => {
                MetricName => 'MyMetricName',
                Namespace  => 'MyMetricNamespace',
                Statistic  => 'Average'
                ,    # values: Average, Minimum, Maximum, SampleCount, Sum
                Dimensions => [
                  {
                    Name  => 'MyMetricDimensionName',
                    Value => 'MyMetricDimensionValue',

                  },
                  ...
                ],    # OPTIONAL
                Unit => 'MyMetricUnit',    # OPTIONAL
              },    # OPTIONAL
              DisableScaleIn                       => 1,    # OPTIONAL
              EstimatedInstanceWarmup              => 1,    # OPTIONAL
              PredefinedScalingMetricSpecification => {
                PredefinedScalingMetricType => 'ASGAverageCPUUtilization'
                , # values: ASGAverageCPUUtilization, ASGAverageNetworkIn, ASGAverageNetworkOut, DynamoDBReadCapacityUtilization, DynamoDBWriteCapacityUtilization, ECSServiceAverageCPUUtilization, ECSServiceAverageMemoryUtilization, ALBRequestCountPerTarget, RDSReaderAverageCPUUtilization, RDSReaderAverageDatabaseConnections, EC2SpotFleetRequestAverageCPUUtilization, EC2SpotFleetRequestAverageNetworkIn, EC2SpotFleetRequestAverageNetworkOut
                ResourceLabel =>
                  'MyResourceLabel',    # min: 1, max: 1023; OPTIONAL
              },    # OPTIONAL
              ScaleInCooldown  => 1,    # OPTIONAL
              ScaleOutCooldown => 1,    # OPTIONAL
            },
            ...
          ],
          CustomizedLoadMetricSpecification => {
            MetricName => 'MyMetricName',
            Namespace  => 'MyMetricNamespace',
            Statistic =>
              'Average',   # values: Average, Minimum, Maximum, SampleCount, Sum
            Dimensions => [
              {
                Name  => 'MyMetricDimensionName',
                Value => 'MyMetricDimensionValue',

              },
              ...
            ],             # OPTIONAL
            Unit => 'MyMetricUnit',    # OPTIONAL
          },    # OPTIONAL
          DisableDynamicScaling             => 1,    # OPTIONAL
          PredefinedLoadMetricSpecification => {
            PredefinedLoadMetricType => 'ASGTotalCPUUtilization'
            , # values: ASGTotalCPUUtilization, ASGTotalNetworkIn, ASGTotalNetworkOut, ALBTargetGroupRequestCount
            ResourceLabel => 'MyResourceLabel',    # min: 1, max: 1023; OPTIONAL
          },    # OPTIONAL
          PredictiveScalingMaxCapacityBehavior =>
            'SetForecastCapacityToMaxCapacity'
          , # values: SetForecastCapacityToMaxCapacity, SetMaxCapacityToForecastCapacity, SetMaxCapacityAboveForecastCapacity; OPTIONAL
          PredictiveScalingMaxCapacityBuffer => 1,
          PredictiveScalingMode              => 'ForecastAndScale'
          ,    # values: ForecastAndScale, ForecastOnly; OPTIONAL
          ScalingPolicyUpdateBehavior => 'KeepExternalPolicies'
          ,    # values: KeepExternalPolicies, ReplaceExternalPolicies; OPTIONAL
          ScheduledActionBufferTime => 1,    # OPTIONAL
        },
        ...
      ],
      ScalingPlanName => 'MyScalingPlanName',

    );

    # Results:
    my $ScalingPlanVersion = $CreateScalingPlanResponse->ScalingPlanVersion;

    # Returns a L<Paws::AutoScalingPlans::CreateScalingPlanResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/autoscaling/CreateScalingPlan>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationSource => L<Paws::AutoScalingPlans::ApplicationSource>

A CloudFormation stack or set of tags. You can create one scaling plan
per application source.



=head2 B<REQUIRED> ScalingInstructions => ArrayRef[L<Paws::AutoScalingPlans::ScalingInstruction>]

The scaling instructions.



=head2 B<REQUIRED> ScalingPlanName => Str

The name of the scaling plan. Names cannot contain vertical bars,
colons, or forward slashes.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateScalingPlan in L<Paws::AutoScalingPlans>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

