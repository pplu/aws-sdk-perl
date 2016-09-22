package Paws::ApplicationAutoScaling;
  use Moose;
  sub service { 'autoscaling' }
  sub version { '2016-02-06' }
  sub target_prefix { 'AnyScaleFrontendService' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller', 'Paws::Net::JsonResponse';

  
  sub DeleteScalingPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationAutoScaling::DeleteScalingPolicy', @_);
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
  sub PutScalingPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationAutoScaling::PutScalingPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterScalableTarget {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApplicationAutoScaling::RegisterScalableTarget', @_);
    return $self->caller->do_call($self, $call_object);
  }

  sub operations { qw/DeleteScalingPolicy DeregisterScalableTarget DescribeScalableTargets DescribeScalingActivities DescribeScalingPolicies PutScalingPolicy RegisterScalableTarget / }

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

Application Auto Scaling is a general purpose Auto Scaling service for
supported elastic AWS resources. With Application Auto Scaling, you can
automatically scale your AWS resources, with an experience similar to
that of Auto Scaling.

Application Auto Scaling supports scaling the following AWS resources:

=over

=item *

Amazon ECS services

=item *

Amazon EC2 Spot fleet instances

=back

You can use Application Auto Scaling to accomplish the following tasks:

=over

=item *

Define scaling policies for automatically adjusting your AWS resources

=item *

Scale your resources in response to CloudWatch alarms

=item *

View history of your scaling events

=back

Application Auto Scaling is available in the following regions:

=over

=item *

C<us-east-1>

=item *

C<us-west-1>

=item *

C<us-west-2>

=item *

C<ap-southeast-1>

=item *

C<ap-southeast-2>

=item *

C<ap-northeast-1>

=item *

C<eu-central-1>

=item *

C<eu-west-1>

=back


=head1 METHODS

=head2 DeleteScalingPolicy(PolicyName => Str, ResourceId => Str, ScalableDimension => Str, ServiceNamespace => Str)

Each argument is described in detail in: L<Paws::ApplicationAutoScaling::DeleteScalingPolicy>

Returns: a L<Paws::ApplicationAutoScaling::DeleteScalingPolicyResponse> instance

  Deletes an Application Auto Scaling scaling policy that was previously
created. If you are no longer using a scaling policy, you can delete it
with this operation.

Deleting a policy deletes the underlying alarm action, but does not
delete the CloudWatch alarm associated with the scaling policy, even if
it no longer has an associated action.

To create a new scaling policy or update an existing one, see
PutScalingPolicy.


=head2 DeregisterScalableTarget(ResourceId => Str, ScalableDimension => Str, ServiceNamespace => Str)

Each argument is described in detail in: L<Paws::ApplicationAutoScaling::DeregisterScalableTarget>

Returns: a L<Paws::ApplicationAutoScaling::DeregisterScalableTargetResponse> instance

  Deregisters a scalable target that was previously registered. If you
are no longer using a scalable target, you can delete it with this
operation. When you deregister a scalable target, all of the scaling
policies that are associated with that scalable target are deleted.

To create a new scalable target or update an existing one, see
RegisterScalableTarget.


=head2 DescribeScalableTargets(ServiceNamespace => Str, [MaxResults => Int, NextToken => Str, ResourceIds => ArrayRef[Str], ScalableDimension => Str])

Each argument is described in detail in: L<Paws::ApplicationAutoScaling::DescribeScalableTargets>

Returns: a L<Paws::ApplicationAutoScaling::DescribeScalableTargetsResponse> instance

  Provides descriptive information for scalable targets with a specified
service namespace.

You can filter the results in a service namespace with the
C<ResourceIds> and C<ScalableDimension> parameters.

To create a new scalable target or update an existing one, see
RegisterScalableTarget. If you are no longer using a scalable target,
you can deregister it with DeregisterScalableTarget.


=head2 DescribeScalingActivities(ServiceNamespace => Str, [MaxResults => Int, NextToken => Str, ResourceId => Str, ScalableDimension => Str])

Each argument is described in detail in: L<Paws::ApplicationAutoScaling::DescribeScalingActivities>

Returns: a L<Paws::ApplicationAutoScaling::DescribeScalingActivitiesResponse> instance

  Provides descriptive information for scaling activities with a
specified service namespace for the previous six weeks.

You can filter the results in a service namespace with the
C<ResourceId> and C<ScalableDimension> parameters.

Scaling activities are triggered by CloudWatch alarms that are
associated with scaling policies. To view the existing scaling policies
for a service namespace, see DescribeScalingPolicies. To create a new
scaling policy or update an existing one, see PutScalingPolicy.


=head2 DescribeScalingPolicies(ServiceNamespace => Str, [MaxResults => Int, NextToken => Str, PolicyNames => ArrayRef[Str], ResourceId => Str, ScalableDimension => Str])

Each argument is described in detail in: L<Paws::ApplicationAutoScaling::DescribeScalingPolicies>

Returns: a L<Paws::ApplicationAutoScaling::DescribeScalingPoliciesResponse> instance

  Provides descriptive information for scaling policies with a specified
service namespace.

You can filter the results in a service namespace with the
C<ResourceId>, C<ScalableDimension>, and C<PolicyNames> parameters.

To create a new scaling policy or update an existing one, see
PutScalingPolicy. If you are no longer using a scaling policy, you can
delete it with DeleteScalingPolicy.


=head2 PutScalingPolicy(PolicyName => Str, ResourceId => Str, ScalableDimension => Str, ServiceNamespace => Str, [PolicyType => Str, StepScalingPolicyConfiguration => L<Paws::ApplicationAutoScaling::StepScalingPolicyConfiguration>])

Each argument is described in detail in: L<Paws::ApplicationAutoScaling::PutScalingPolicy>

Returns: a L<Paws::ApplicationAutoScaling::PutScalingPolicyResponse> instance

  Creates or updates a policy for an existing Application Auto Scaling
scalable target. Each scalable target is identified by service
namespace, a resource ID, and a scalable dimension, and a scaling
policy applies to a scalable target that is identified by those three
attributes. You cannot create a scaling policy without first
registering a scalable target with RegisterScalableTarget.

To update an existing policy, use the existing policy name and set the
parameters you want to change. Any existing parameter not changed in an
update to an existing policy is not changed in this update request.

You can view the existing scaling policies for a service namespace with
DescribeScalingPolicies. If you are no longer using a scaling policy,
you can delete it with DeleteScalingPolicy.


=head2 RegisterScalableTarget(ResourceId => Str, ScalableDimension => Str, ServiceNamespace => Str, [MaxCapacity => Int, MinCapacity => Int, RoleARN => Str])

Each argument is described in detail in: L<Paws::ApplicationAutoScaling::RegisterScalableTarget>

Returns: a L<Paws::ApplicationAutoScaling::RegisterScalableTargetResponse> instance

  Registers or updates a scalable target. A scalable target is a resource
that can be scaled out or in with Application Auto Scaling. After you
have registered a scalable target, you can use this operation to update
the minimum and maximum values for your scalable dimension.

After you register a scalable target with Application Auto Scaling, you
can create and apply scaling policies to it with PutScalingPolicy. You
can view the existing scaling policies for a service namespace with
DescribeScalableTargets. If you are no longer using a scalable target,
you can deregister it with DeregisterScalableTarget.


=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

