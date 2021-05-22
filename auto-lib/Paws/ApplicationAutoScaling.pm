package Paws::ApplicationAutoScaling;
  use Moose;
  sub service { 'application-autoscaling' }
  sub signing_name { 'application-autoscaling' }
  sub version { '2016-02-06' }
  sub target_prefix { 'AnyScaleFrontendService' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub DeleteScalingPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationAutoScaling::DeleteScalingPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteScheduledAction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationAutoScaling::DeleteScheduledAction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeregisterScalableTarget {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationAutoScaling::DeregisterScalableTarget', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeScalableTargets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationAutoScaling::DescribeScalableTargets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeScalingActivities {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationAutoScaling::DescribeScalingActivities', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeScalingPolicies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationAutoScaling::DescribeScalingPolicies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeScheduledActions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationAutoScaling::DescribeScheduledActions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutScalingPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationAutoScaling::PutScalingPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutScheduledAction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationAutoScaling::PutScheduledAction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterScalableTarget {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationAutoScaling::RegisterScalableTarget', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub DescribeAllScalableTargets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeScalableTargets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeScalableTargets(@_, NextToken => $next_result->NextToken);
        push @{ $result->ScalableTargets }, @{ $next_result->ScalableTargets };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ScalableTargets') foreach (@{ $result->ScalableTargets });
        $result = $self->DescribeScalableTargets(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ScalableTargets') foreach (@{ $result->ScalableTargets });
    }

    return undef
  }
  sub DescribeAllScalingActivities {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeScalingActivities(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeScalingActivities(@_, NextToken => $next_result->NextToken);
        push @{ $result->ScalingActivities }, @{ $next_result->ScalingActivities };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ScalingActivities') foreach (@{ $result->ScalingActivities });
        $result = $self->DescribeScalingActivities(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ScalingActivities') foreach (@{ $result->ScalingActivities });
    }

    return undef
  }
  sub DescribeAllScalingPolicies {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeScalingPolicies(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeScalingPolicies(@_, NextToken => $next_result->NextToken);
        push @{ $result->ScalingPolicies }, @{ $next_result->ScalingPolicies };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ScalingPolicies') foreach (@{ $result->ScalingPolicies });
        $result = $self->DescribeScalingPolicies(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ScalingPolicies') foreach (@{ $result->ScalingPolicies });
    }

    return undef
  }
  sub DescribeAllScheduledActions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeScheduledActions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeScheduledActions(@_, NextToken => $next_result->NextToken);
        push @{ $result->ScheduledActions }, @{ $next_result->ScheduledActions };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ScheduledActions') foreach (@{ $result->ScheduledActions });
        $result = $self->DescribeScheduledActions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ScheduledActions') foreach (@{ $result->ScheduledActions });
    }

    return undef
  }


  sub operations { qw/DeleteScalingPolicy DeleteScheduledAction DeregisterScalableTarget DescribeScalableTargets DescribeScalingActivities DescribeScalingPolicies DescribeScheduledActions PutScalingPolicy PutScheduledAction RegisterScalableTarget / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationAutoScaling - Perl Interface to AWS Application Auto Scaling

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('ApplicationAutoScaling');
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

With Application Auto Scaling, you can configure automatic scaling for
the following resources:

=over

=item *

Amazon ECS services

=item *

Amazon EC2 Spot Fleet requests

=item *

Amazon EMR clusters

=item *

Amazon AppStream 2.0 fleets

=item *

Amazon DynamoDB tables and global secondary indexes throughput capacity

=item *

Amazon Aurora Replicas

=item *

Amazon SageMaker endpoint variants

=item *

Custom resources provided by your own applications or services

=item *

Amazon Comprehend document classification and entity recognizer
endpoints

=item *

AWS Lambda function provisioned concurrency

=item *

Amazon Keyspaces (for Apache Cassandra) tables

=item *

Amazon Managed Streaming for Apache Kafka broker storage

=back

B<API Summary>

The Application Auto Scaling service API includes three key sets of
actions:

=over

=item *

Register and manage scalable targets - Register AWS or custom resources
as scalable targets (a resource that Application Auto Scaling can
scale), set minimum and maximum capacity limits, and retrieve
information on existing scalable targets.

=item *

Configure and manage automatic scaling - Define scaling policies to
dynamically scale your resources in response to CloudWatch alarms,
schedule one-time or recurring scaling actions, and retrieve your
recent scaling activity history.

=item *

Suspend and resume scaling - Temporarily suspend and later resume
automatic scaling by calling the RegisterScalableTarget
(https://docs.aws.amazon.com/autoscaling/application/APIReference/API_RegisterScalableTarget.html)
API action for any Application Auto Scaling scalable target. You can
suspend and resume (individually or in combination) scale-out
activities that are triggered by a scaling policy, scale-in activities
that are triggered by a scaling policy, and scheduled scaling.

=back

To learn more about Application Auto Scaling, including information
about granting IAM users required permissions for Application Auto
Scaling actions, see the Application Auto Scaling User Guide
(https://docs.aws.amazon.com/autoscaling/application/userguide/what-is-application-auto-scaling.html).

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/application-autoscaling-2016-02-06>


=head1 METHODS

=head2 DeleteScalingPolicy

=over

=item PolicyName => Str

=item ResourceId => Str

=item ScalableDimension => Str

=item ServiceNamespace => Str


=back

Each argument is described in detail in: L<Paws::ApplicationAutoScaling::DeleteScalingPolicy>

Returns: a L<Paws::ApplicationAutoScaling::DeleteScalingPolicyResponse> instance

Deletes the specified scaling policy for an Application Auto Scaling
scalable target.

Deleting a step scaling policy deletes the underlying alarm action, but
does not delete the CloudWatch alarm associated with the scaling
policy, even if it no longer has an associated action.

For more information, see Delete a step scaling policy
(https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-step-scaling-policies.html#delete-step-scaling-policy)
and Delete a target tracking scaling policy
(https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-target-tracking.html#delete-target-tracking-policy)
in the I<Application Auto Scaling User Guide>.


=head2 DeleteScheduledAction

=over

=item ResourceId => Str

=item ScalableDimension => Str

=item ScheduledActionName => Str

=item ServiceNamespace => Str


=back

Each argument is described in detail in: L<Paws::ApplicationAutoScaling::DeleteScheduledAction>

Returns: a L<Paws::ApplicationAutoScaling::DeleteScheduledActionResponse> instance

Deletes the specified scheduled action for an Application Auto Scaling
scalable target.

For more information, see Delete a scheduled action
(https://docs.aws.amazon.com/autoscaling/application/userguide/scheduled-scaling-additional-cli-commands.html#delete-scheduled-action)
in the I<Application Auto Scaling User Guide>.


=head2 DeregisterScalableTarget

=over

=item ResourceId => Str

=item ScalableDimension => Str

=item ServiceNamespace => Str


=back

Each argument is described in detail in: L<Paws::ApplicationAutoScaling::DeregisterScalableTarget>

Returns: a L<Paws::ApplicationAutoScaling::DeregisterScalableTargetResponse> instance

Deregisters an Application Auto Scaling scalable target when you have
finished using it. To see which resources have been registered, use
DescribeScalableTargets
(https://docs.aws.amazon.com/autoscaling/application/APIReference/API_DescribeScalableTargets.html).

Deregistering a scalable target deletes the scaling policies and the
scheduled actions that are associated with it.


=head2 DescribeScalableTargets

=over

=item ServiceNamespace => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ResourceIds => ArrayRef[Str|Undef]]

=item [ScalableDimension => Str]


=back

Each argument is described in detail in: L<Paws::ApplicationAutoScaling::DescribeScalableTargets>

Returns: a L<Paws::ApplicationAutoScaling::DescribeScalableTargetsResponse> instance

Gets information about the scalable targets in the specified namespace.

You can filter the results using C<ResourceIds> and
C<ScalableDimension>.


=head2 DescribeScalingActivities

=over

=item ServiceNamespace => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ResourceId => Str]

=item [ScalableDimension => Str]


=back

Each argument is described in detail in: L<Paws::ApplicationAutoScaling::DescribeScalingActivities>

Returns: a L<Paws::ApplicationAutoScaling::DescribeScalingActivitiesResponse> instance

Provides descriptive information about the scaling activities in the
specified namespace from the previous six weeks.

You can filter the results using C<ResourceId> and
C<ScalableDimension>.


=head2 DescribeScalingPolicies

=over

=item ServiceNamespace => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [PolicyNames => ArrayRef[Str|Undef]]

=item [ResourceId => Str]

=item [ScalableDimension => Str]


=back

Each argument is described in detail in: L<Paws::ApplicationAutoScaling::DescribeScalingPolicies>

Returns: a L<Paws::ApplicationAutoScaling::DescribeScalingPoliciesResponse> instance

Describes the Application Auto Scaling scaling policies for the
specified service namespace.

You can filter the results using C<ResourceId>, C<ScalableDimension>,
and C<PolicyNames>.

For more information, see Target tracking scaling policies
(https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-target-tracking.html)
and Step scaling policies
(https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-step-scaling-policies.html)
in the I<Application Auto Scaling User Guide>.


=head2 DescribeScheduledActions

=over

=item ServiceNamespace => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ResourceId => Str]

=item [ScalableDimension => Str]

=item [ScheduledActionNames => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::ApplicationAutoScaling::DescribeScheduledActions>

Returns: a L<Paws::ApplicationAutoScaling::DescribeScheduledActionsResponse> instance

Describes the Application Auto Scaling scheduled actions for the
specified service namespace.

You can filter the results using the C<ResourceId>,
C<ScalableDimension>, and C<ScheduledActionNames> parameters.

For more information, see Scheduled scaling
(https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-scheduled-scaling.html)
and Managing scheduled scaling
(https://docs.aws.amazon.com/autoscaling/application/userguide/scheduled-scaling-additional-cli-commands.html)
in the I<Application Auto Scaling User Guide>.


=head2 PutScalingPolicy

=over

=item PolicyName => Str

=item ResourceId => Str

=item ScalableDimension => Str

=item ServiceNamespace => Str

=item [PolicyType => Str]

=item [StepScalingPolicyConfiguration => L<Paws::ApplicationAutoScaling::StepScalingPolicyConfiguration>]

=item [TargetTrackingScalingPolicyConfiguration => L<Paws::ApplicationAutoScaling::TargetTrackingScalingPolicyConfiguration>]


=back

Each argument is described in detail in: L<Paws::ApplicationAutoScaling::PutScalingPolicy>

Returns: a L<Paws::ApplicationAutoScaling::PutScalingPolicyResponse> instance

Creates or updates a scaling policy for an Application Auto Scaling
scalable target.

Each scalable target is identified by a service namespace, resource ID,
and scalable dimension. A scaling policy applies to the scalable target
identified by those three attributes. You cannot create a scaling
policy until you have registered the resource as a scalable target.

Multiple scaling policies can be in force at the same time for the same
scalable target. You can have one or more target tracking scaling
policies, one or more step scaling policies, or both. However, there is
a chance that multiple policies could conflict, instructing the
scalable target to scale out or in at the same time. Application Auto
Scaling gives precedence to the policy that provides the largest
capacity for both scale out and scale in. For example, if one policy
increases capacity by 3, another policy increases capacity by 200
percent, and the current capacity is 10, Application Auto Scaling uses
the policy with the highest calculated capacity (200% of 10 = 20) and
scales out to 30.

We recommend caution, however, when using target tracking scaling
policies with step scaling policies because conflicts between these
policies can cause undesirable behavior. For example, if the step
scaling policy initiates a scale-in activity before the target tracking
policy is ready to scale in, the scale-in activity will not be blocked.
After the scale-in activity completes, the target tracking policy could
instruct the scalable target to scale out again.

For more information, see Target tracking scaling policies
(https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-target-tracking.html)
and Step scaling policies
(https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-step-scaling-policies.html)
in the I<Application Auto Scaling User Guide>.

If a scalable target is deregistered, the scalable target is no longer
available to execute scaling policies. Any scaling policies that were
specified for the scalable target are deleted.


=head2 PutScheduledAction

=over

=item ResourceId => Str

=item ScalableDimension => Str

=item ScheduledActionName => Str

=item ServiceNamespace => Str

=item [EndTime => Str]

=item [ScalableTargetAction => L<Paws::ApplicationAutoScaling::ScalableTargetAction>]

=item [Schedule => Str]

=item [StartTime => Str]

=item [Timezone => Str]


=back

Each argument is described in detail in: L<Paws::ApplicationAutoScaling::PutScheduledAction>

Returns: a L<Paws::ApplicationAutoScaling::PutScheduledActionResponse> instance

Creates or updates a scheduled action for an Application Auto Scaling
scalable target.

Each scalable target is identified by a service namespace, resource ID,
and scalable dimension. A scheduled action applies to the scalable
target identified by those three attributes. You cannot create a
scheduled action until you have registered the resource as a scalable
target.

When start and end times are specified with a recurring schedule using
a cron expression or rates, they form the boundaries for when the
recurring action starts and stops.

To update a scheduled action, specify the parameters that you want to
change. If you don't specify start and end times, the old values are
deleted.

For more information, see Scheduled scaling
(https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-scheduled-scaling.html)
in the I<Application Auto Scaling User Guide>.

If a scalable target is deregistered, the scalable target is no longer
available to run scheduled actions. Any scheduled actions that were
specified for the scalable target are deleted.


=head2 RegisterScalableTarget

=over

=item ResourceId => Str

=item ScalableDimension => Str

=item ServiceNamespace => Str

=item [MaxCapacity => Int]

=item [MinCapacity => Int]

=item [RoleARN => Str]

=item [SuspendedState => L<Paws::ApplicationAutoScaling::SuspendedState>]


=back

Each argument is described in detail in: L<Paws::ApplicationAutoScaling::RegisterScalableTarget>

Returns: a L<Paws::ApplicationAutoScaling::RegisterScalableTargetResponse> instance

Registers or updates a scalable target.

A scalable target is a resource that Application Auto Scaling can scale
out and scale in. Scalable targets are uniquely identified by the
combination of resource ID, scalable dimension, and namespace.

When you register a new scalable target, you must specify values for
minimum and maximum capacity. Current capacity will be adjusted within
the specified range when scaling starts. Application Auto Scaling
scaling policies will not scale capacity to values that are outside of
this range.

After you register a scalable target, you do not need to register it
again to use other Application Auto Scaling operations. To see which
resources have been registered, use DescribeScalableTargets
(https://docs.aws.amazon.com/autoscaling/application/APIReference/API_DescribeScalableTargets.html).
You can also view the scaling policies for a service namespace by using
DescribeScalableTargets
(https://docs.aws.amazon.com/autoscaling/application/APIReference/API_DescribeScalableTargets.html).
If you no longer need a scalable target, you can deregister it by using
DeregisterScalableTarget
(https://docs.aws.amazon.com/autoscaling/application/APIReference/API_DeregisterScalableTarget.html).

To update a scalable target, specify the parameters that you want to
change. Include the parameters that identify the scalable target:
resource ID, scalable dimension, and namespace. Any parameters that you
don't specify are not changed by this update request.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 DescribeAllScalableTargets(sub { },ServiceNamespace => Str, [MaxResults => Int, NextToken => Str, ResourceIds => ArrayRef[Str|Undef], ScalableDimension => Str])

=head2 DescribeAllScalableTargets(ServiceNamespace => Str, [MaxResults => Int, NextToken => Str, ResourceIds => ArrayRef[Str|Undef], ScalableDimension => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ScalableTargets, passing the object as the first parameter, and the string 'ScalableTargets' as the second parameter 

If not, it will return a a L<Paws::ApplicationAutoScaling::DescribeScalableTargetsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllScalingActivities(sub { },ServiceNamespace => Str, [MaxResults => Int, NextToken => Str, ResourceId => Str, ScalableDimension => Str])

=head2 DescribeAllScalingActivities(ServiceNamespace => Str, [MaxResults => Int, NextToken => Str, ResourceId => Str, ScalableDimension => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ScalingActivities, passing the object as the first parameter, and the string 'ScalingActivities' as the second parameter 

If not, it will return a a L<Paws::ApplicationAutoScaling::DescribeScalingActivitiesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllScalingPolicies(sub { },ServiceNamespace => Str, [MaxResults => Int, NextToken => Str, PolicyNames => ArrayRef[Str|Undef], ResourceId => Str, ScalableDimension => Str])

=head2 DescribeAllScalingPolicies(ServiceNamespace => Str, [MaxResults => Int, NextToken => Str, PolicyNames => ArrayRef[Str|Undef], ResourceId => Str, ScalableDimension => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ScalingPolicies, passing the object as the first parameter, and the string 'ScalingPolicies' as the second parameter 

If not, it will return a a L<Paws::ApplicationAutoScaling::DescribeScalingPoliciesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllScheduledActions(sub { },ServiceNamespace => Str, [MaxResults => Int, NextToken => Str, ResourceId => Str, ScalableDimension => Str, ScheduledActionNames => ArrayRef[Str|Undef]])

=head2 DescribeAllScheduledActions(ServiceNamespace => Str, [MaxResults => Int, NextToken => Str, ResourceId => Str, ScalableDimension => Str, ScheduledActionNames => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ScheduledActions, passing the object as the first parameter, and the string 'ScheduledActions' as the second parameter 

If not, it will return a a L<Paws::ApplicationAutoScaling::DescribeScheduledActionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

