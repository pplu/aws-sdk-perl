package Paws::AutoScalingPlans;
  use Moose;
  sub service { 'autoscaling' }
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
  sub UpdateScalingPlan {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AutoScalingPlans::UpdateScalingPlan', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/CreateScalingPlan DeleteScalingPlan DescribeScalingPlanResources DescribeScalingPlans UpdateScalingPlan / }

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
for your application and configure dynamic scaling for your scalable
resources.

To get started, create a scaling plan with a set of instructions used
to configure dynamic scaling for the scalable resources in your
application. AWS Auto Scaling creates target tracking scaling policies
for the scalable resources in your scaling plan. Target tracking
scaling policies adjust the capacity of your scalable resource as
required to maintain resource utilization at the target value that you
specified.

=head1 METHODS

=head2 CreateScalingPlan(ApplicationSource => L<Paws::AutoScalingPlans::ApplicationSource>, ScalingInstructions => ArrayRef[L<Paws::AutoScalingPlans::ScalingInstruction>], ScalingPlanName => Str)

Each argument is described in detail in: L<Paws::AutoScalingPlans::CreateScalingPlan>

Returns: a L<Paws::AutoScalingPlans::CreateScalingPlanResponse> instance

Creates a scaling plan.

A scaling plan contains a set of instructions used to configure dynamic
scaling for the scalable resources in your application. AWS Auto
Scaling creates target tracking scaling policies based on the scaling
instructions in your scaling plan.


=head2 DeleteScalingPlan(ScalingPlanName => Str, ScalingPlanVersion => Int)

Each argument is described in detail in: L<Paws::AutoScalingPlans::DeleteScalingPlan>

Returns: a L<Paws::AutoScalingPlans::DeleteScalingPlanResponse> instance

Deletes the specified scaling plan.


=head2 DescribeScalingPlanResources(ScalingPlanName => Str, ScalingPlanVersion => Int, [MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::AutoScalingPlans::DescribeScalingPlanResources>

Returns: a L<Paws::AutoScalingPlans::DescribeScalingPlanResourcesResponse> instance

Describes the scalable resources in the specified scaling plan.


=head2 DescribeScalingPlans([ApplicationSources => ArrayRef[L<Paws::AutoScalingPlans::ApplicationSource>], MaxResults => Int, NextToken => Str, ScalingPlanNames => ArrayRef[Str|Undef], ScalingPlanVersion => Int])

Each argument is described in detail in: L<Paws::AutoScalingPlans::DescribeScalingPlans>

Returns: a L<Paws::AutoScalingPlans::DescribeScalingPlansResponse> instance

Describes the specified scaling plans or all of your scaling plans.


=head2 UpdateScalingPlan(ScalingPlanName => Str, ScalingPlanVersion => Int, [ApplicationSource => L<Paws::AutoScalingPlans::ApplicationSource>, ScalingInstructions => ArrayRef[L<Paws::AutoScalingPlans::ScalingInstruction>]])

Each argument is described in detail in: L<Paws::AutoScalingPlans::UpdateScalingPlan>

Returns: a L<Paws::AutoScalingPlans::UpdateScalingPlanResponse> instance

Updates the scaling plan for the specified scaling plan.

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

