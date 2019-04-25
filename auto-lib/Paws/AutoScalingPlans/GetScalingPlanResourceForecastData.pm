
package Paws::AutoScalingPlans::GetScalingPlanResourceForecastData;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Str', required => 1);
  has ForecastDataType => (is => 'ro', isa => 'Str', required => 1);
  has ResourceId => (is => 'ro', isa => 'Str', required => 1);
  has ScalableDimension => (is => 'ro', isa => 'Str', required => 1);
  has ScalingPlanName => (is => 'ro', isa => 'Str', required => 1);
  has ScalingPlanVersion => (is => 'ro', isa => 'Int', required => 1);
  has ServiceNamespace => (is => 'ro', isa => 'Str', required => 1);
  has StartTime => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetScalingPlanResourceForecastData');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AutoScalingPlans::GetScalingPlanResourceForecastDataResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScalingPlans::GetScalingPlanResourceForecastData - Arguments for method GetScalingPlanResourceForecastData on L<Paws::AutoScalingPlans>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetScalingPlanResourceForecastData on the
L<AWS Auto Scaling Plans|Paws::AutoScalingPlans> service. Use the attributes of this class
as arguments to method GetScalingPlanResourceForecastData.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetScalingPlanResourceForecastData.

=head1 SYNOPSIS

    my $autoscaling = Paws->service('AutoScalingPlans');
    my $GetScalingPlanResourceForecastDataResponse =
      $autoscaling->GetScalingPlanResourceForecastData(
      EndTime            => '1970-01-01T01:00:00',
      ForecastDataType   => 'CapacityForecast',
      ResourceId         => 'MyXmlString',
      ScalableDimension  => 'autoscaling:autoScalingGroup:DesiredCapacity',
      ScalingPlanName    => 'MyScalingPlanName',
      ScalingPlanVersion => 1,
      ServiceNamespace   => 'autoscaling',
      StartTime          => '1970-01-01T01:00:00',

      );

    # Results:
    my $Datapoints = $GetScalingPlanResourceForecastDataResponse->Datapoints;

# Returns a L<Paws::AutoScalingPlans::GetScalingPlanResourceForecastDataResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/autoscaling/GetScalingPlanResourceForecastData>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndTime => Str

The exclusive end time of the time range for the forecast data to get.
The maximum time duration between the start and end time is seven days.

Although this parameter can accept a date and time that is more than
two days in the future, the availability of forecast data has limits.
AWS Auto Scaling only issues forecasts for periods of two days in
advance.



=head2 B<REQUIRED> ForecastDataType => Str

The type of forecast data to get.

=over

=item *

C<LoadForecast>: The load metric forecast.

=item *

C<CapacityForecast>: The capacity forecast.

=item *

C<ScheduledActionMinCapacity>: The minimum capacity for each scheduled
scaling action. This data is calculated as the larger of two values:
the capacity forecast or the minimum capacity in the scaling
instruction.

=item *

C<ScheduledActionMaxCapacity>: The maximum capacity for each scheduled
scaling action. The calculation used is determined by the predictive
scaling maximum capacity behavior setting in the scaling instruction.

=back


Valid values are: C<"CapacityForecast">, C<"LoadForecast">, C<"ScheduledActionMinCapacity">, C<"ScheduledActionMaxCapacity">

=head2 B<REQUIRED> ResourceId => Str

The ID of the resource. This string consists of the resource type and
unique identifier.

=over

=item *

Auto Scaling group - The resource type is C<autoScalingGroup> and the
unique identifier is the name of the Auto Scaling group. Example:
C<autoScalingGroup/my-asg>.

=item *

ECS service - The resource type is C<service> and the unique identifier
is the cluster name and service name. Example:
C<service/default/sample-webapp>.

=item *

Spot Fleet request - The resource type is C<spot-fleet-request> and the
unique identifier is the Spot Fleet request ID. Example:
C<spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE>.

=item *

DynamoDB table - The resource type is C<table> and the unique
identifier is the resource ID. Example: C<table/my-table>.

=item *

DynamoDB global secondary index - The resource type is C<index> and the
unique identifier is the resource ID. Example:
C<table/my-table/index/my-table-index>.

=item *

Aurora DB cluster - The resource type is C<cluster> and the unique
identifier is the cluster name. Example: C<cluster:my-db-cluster>.

=back




=head2 B<REQUIRED> ScalableDimension => Str

The scalable dimension for the resource.

Valid values are: C<"autoscaling:autoScalingGroup:DesiredCapacity">, C<"ecs:service:DesiredCount">, C<"ec2:spot-fleet-request:TargetCapacity">, C<"rds:cluster:ReadReplicaCount">, C<"dynamodb:table:ReadCapacityUnits">, C<"dynamodb:table:WriteCapacityUnits">, C<"dynamodb:index:ReadCapacityUnits">, C<"dynamodb:index:WriteCapacityUnits">

=head2 B<REQUIRED> ScalingPlanName => Str

The name of the scaling plan.



=head2 B<REQUIRED> ScalingPlanVersion => Int

The version number of the scaling plan.



=head2 B<REQUIRED> ServiceNamespace => Str

The namespace of the AWS service.

Valid values are: C<"autoscaling">, C<"ecs">, C<"ec2">, C<"rds">, C<"dynamodb">

=head2 B<REQUIRED> StartTime => Str

The inclusive start time of the time range for the forecast data to
get. The date and time can be at most 56 days before the current date
and time.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetScalingPlanResourceForecastData in L<Paws::AutoScalingPlans>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

