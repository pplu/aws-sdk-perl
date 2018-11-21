package Paws::AutoScalingPlans;
  use Moose;
  sub service { 'autoscaling' }
  sub signing_name { 'autoscaling-plans' }
  sub version { '2018-01-06' }
  sub target_prefix { 'AnyScaleScalingPlannerFrontendService' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub CreateScalingPlan {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AutoScalingPlans::CreateScalingPlan', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteScalingPlan {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AutoScalingPlans::DeleteScalingPlan', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeScalingPlanResources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AutoScalingPlans::DescribeScalingPlanResources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeScalingPlans {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AutoScalingPlans::DescribeScalingPlans', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetScalingPlanResourceForecastData {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AutoScalingPlans::GetScalingPlanResourceForecastData', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateScalingPlan {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AutoScalingPlans::UpdateScalingPlan', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/CreateScalingPlan DeleteScalingPlan DescribeScalingPlanResources DescribeScalingPlans GetScalingPlanResourceForecastData UpdateScalingPlan / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScalingPlans - Perl Interface to AWS AWS Auto Scaling Plans

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('AutoScalingPlans');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

AWS Auto Scaling

Use AWS Auto Scaling to quickly discover all the scalable AWS resources
for your application and configure dynamic scaling and predictive
scaling for your resources using scaling plans. Use this service in
conjunction with the Amazon EC2 Auto Scaling, Application Auto Scaling,
Amazon CloudWatch, and AWS CloudFormation services.

Currently, predictive scaling is only available for Amazon EC2 Auto
Scaling groups.

For more information about AWS Auto Scaling, see the AWS Auto Scaling
User Guide
(http://docs.aws.amazon.com/autoscaling/plans/userguide/what-is-aws-auto-scaling.html).

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/autoscaling-2018-01-06>


=head1 METHODS

=head2 CreateScalingPlan

=over

=item ApplicationSource => L<Paws::AutoScalingPlans::ApplicationSource>

=item ScalingInstructions => ArrayRef[L<Paws::AutoScalingPlans::ScalingInstruction>]

=item ScalingPlanName => Str


=back

Each argument is described in detail in: L<Paws::AutoScalingPlans::CreateScalingPlan>

Returns: a L<Paws::AutoScalingPlans::CreateScalingPlanResponse> instance

Creates a scaling plan.


=head2 DeleteScalingPlan

=over

=item ScalingPlanName => Str

=item ScalingPlanVersion => Int


=back

Each argument is described in detail in: L<Paws::AutoScalingPlans::DeleteScalingPlan>

Returns: a L<Paws::AutoScalingPlans::DeleteScalingPlanResponse> instance

Deletes the specified scaling plan.

Deleting a scaling plan deletes the underlying ScalingInstruction for
all of the scalable resources that are covered by the plan.

If the plan has launched resources or has scaling activities in
progress, you must delete those resources separately.


=head2 DescribeScalingPlanResources

=over

=item ScalingPlanName => Str

=item ScalingPlanVersion => Int

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AutoScalingPlans::DescribeScalingPlanResources>

Returns: a L<Paws::AutoScalingPlans::DescribeScalingPlanResourcesResponse> instance

Describes the scalable resources in the specified scaling plan.


=head2 DescribeScalingPlans

=over

=item [ApplicationSources => ArrayRef[L<Paws::AutoScalingPlans::ApplicationSource>]]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ScalingPlanNames => ArrayRef[Str|Undef]]

=item [ScalingPlanVersion => Int]


=back

Each argument is described in detail in: L<Paws::AutoScalingPlans::DescribeScalingPlans>

Returns: a L<Paws::AutoScalingPlans::DescribeScalingPlansResponse> instance

Describes one or more of your scaling plans.


=head2 GetScalingPlanResourceForecastData

=over

=item EndTime => Str

=item ForecastDataType => Str

=item ResourceId => Str

=item ScalableDimension => Str

=item ScalingPlanName => Str

=item ScalingPlanVersion => Int

=item ServiceNamespace => Str

=item StartTime => Str


=back

Each argument is described in detail in: L<Paws::AutoScalingPlans::GetScalingPlanResourceForecastData>

Returns: a L<Paws::AutoScalingPlans::GetScalingPlanResourceForecastDataResponse> instance

Retrieves the forecast data for a scalable resource.

Capacity forecasts are represented as predicted values, or data points,
that are calculated using historical data points from a specified
CloudWatch load metric. Data points are available for up to 56 days.


=head2 UpdateScalingPlan

=over

=item ScalingPlanName => Str

=item ScalingPlanVersion => Int

=item [ApplicationSource => L<Paws::AutoScalingPlans::ApplicationSource>]

=item [ScalingInstructions => ArrayRef[L<Paws::AutoScalingPlans::ScalingInstruction>]]


=back

Each argument is described in detail in: L<Paws::AutoScalingPlans::UpdateScalingPlan>

Returns: a L<Paws::AutoScalingPlans::UpdateScalingPlanResponse> instance

Updates the specified scaling plan.

You cannot update a scaling plan if it is in the process of being
created, updated, or deleted.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

