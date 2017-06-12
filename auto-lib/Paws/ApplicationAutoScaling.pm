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

With Application Auto Scaling, you can automatically scale your AWS
resources. The experience similar to that of Auto Scaling. You can use
Application Auto Scaling to accomplish the following tasks:

=over

=item *

Define scaling policies to automatically scale your AWS resources

=item *

Scale your resources in response to CloudWatch alarms

=item *

View the history of your scaling events

=back

Application Auto Scaling can scale the following AWS resources:

=over

=item *

Amazon ECS services. For more information, see Service Auto Scaling in
the I<Amazon EC2 Container Service Developer Guide>.

=item *

Amazon EC2 Spot fleets. For more information, see Automatic Scaling for
Spot Fleet in the I<Amazon EC2 User Guide>.

=item *

Amazon EMR clusters. For more information, see Using Automatic Scaling
in Amazon EMR in the I<Amazon EMR Management Guide>.

=item *

AppStream 2.0 fleets. For more information, see Autoscaling Amazon
AppStream 2.0 Resources in the I<Amazon AppStream 2.0 Developer Guide>.

=back

For a list of supported regions, see AWS Regions and Endpoints:
Application Auto Scaling in the I<AWS General Reference>.

=head1 METHODS

=head2 DeleteScalingPolicy(PolicyName => Str, ResourceId => Str, ScalableDimension => Str, ServiceNamespace => Str)

Each argument is described in detail in: L<Paws::ApplicationAutoScaling::DeleteScalingPolicy>

Returns: a L<Paws::ApplicationAutoScaling::DeleteScalingPolicyResponse> instance

  Deletes the specified Application Auto Scaling scaling policy.

Deleting a policy deletes the underlying alarm action, but does not
delete the CloudWatch alarm associated with the scaling policy, even if
it no longer has an associated action.

To create a scaling policy or update an existing one, see
PutScalingPolicy.


=head2 DeregisterScalableTarget(ResourceId => Str, ScalableDimension => Str, ServiceNamespace => Str)

Each argument is described in detail in: L<Paws::ApplicationAutoScaling::DeregisterScalableTarget>

Returns: a L<Paws::ApplicationAutoScaling::DeregisterScalableTargetResponse> instance

  Deregisters a scalable target.

Deregistering a scalable target deletes the scaling policies that are
associated with it.

To create a scalable target or update an existing one, see
RegisterScalableTarget.


=head2 DescribeScalableTargets(ServiceNamespace => Str, [MaxResults => Int, NextToken => Str, ResourceIds => ArrayRef[Str|Undef], ScalableDimension => Str])

Each argument is described in detail in: L<Paws::ApplicationAutoScaling::DescribeScalableTargets>

Returns: a L<Paws::ApplicationAutoScaling::DescribeScalableTargetsResponse> instance

  Provides descriptive information about the scalable targets in the
specified namespace.

You can filter the results using the C<ResourceIds> and
C<ScalableDimension> parameters.

To create a scalable target or update an existing one, see
RegisterScalableTarget. If you are no longer using a scalable target,
you can deregister it using DeregisterScalableTarget.


=head2 DescribeScalingActivities(ServiceNamespace => Str, [MaxResults => Int, NextToken => Str, ResourceId => Str, ScalableDimension => Str])

Each argument is described in detail in: L<Paws::ApplicationAutoScaling::DescribeScalingActivities>

Returns: a L<Paws::ApplicationAutoScaling::DescribeScalingActivitiesResponse> instance

  Provides descriptive information about the scaling activities in the
specified namespace from the previous six weeks.

You can filter the results using the C<ResourceId> and
C<ScalableDimension> parameters.

Scaling activities are triggered by CloudWatch alarms that are
associated with scaling policies. To view the scaling policies for a
service namespace, see DescribeScalingPolicies. To create a scaling
policy or update an existing one, see PutScalingPolicy.


=head2 DescribeScalingPolicies(ServiceNamespace => Str, [MaxResults => Int, NextToken => Str, PolicyNames => ArrayRef[Str|Undef], ResourceId => Str, ScalableDimension => Str])

Each argument is described in detail in: L<Paws::ApplicationAutoScaling::DescribeScalingPolicies>

Returns: a L<Paws::ApplicationAutoScaling::DescribeScalingPoliciesResponse> instance

  Provides descriptive information about the scaling policies in the
specified namespace.

You can filter the results using the C<ResourceId>,
C<ScalableDimension>, and C<PolicyNames> parameters.

To create a scaling policy or update an existing one, see
PutScalingPolicy. If you are no longer using a scaling policy, you can
delete it using DeleteScalingPolicy.


=head2 PutScalingPolicy(PolicyName => Str, ResourceId => Str, ScalableDimension => Str, ServiceNamespace => Str, [PolicyType => Str, StepScalingPolicyConfiguration => L<Paws::ApplicationAutoScaling::StepScalingPolicyConfiguration>])

Each argument is described in detail in: L<Paws::ApplicationAutoScaling::PutScalingPolicy>

Returns: a L<Paws::ApplicationAutoScaling::PutScalingPolicyResponse> instance

  Creates or updates a policy for an Application Auto Scaling scalable
target.

Each scalable target is identified by a service namespace, resource ID,
and scalable dimension. A scaling policy applies to the scalable target
identified by those three attributes. You cannot create a scaling
policy without first registering a scalable target using
RegisterScalableTarget.

To update a policy, specify its policy name and the parameters that you
want to change. Any parameters that you don't specify are not changed
by this update request.

You can view the scaling policies for a service namespace using
DescribeScalingPolicies. If you are no longer using a scaling policy,
you can delete it using DeleteScalingPolicy.


=head2 RegisterScalableTarget(ResourceId => Str, ScalableDimension => Str, ServiceNamespace => Str, [MaxCapacity => Int, MinCapacity => Int, RoleARN => Str])

Each argument is described in detail in: L<Paws::ApplicationAutoScaling::RegisterScalableTarget>

Returns: a L<Paws::ApplicationAutoScaling::RegisterScalableTargetResponse> instance

  Registers or updates a scalable target. A scalable target is a resource
that Application Auto Scaling can scale out or scale in. After you have
registered a scalable target, you can use this operation to update the
minimum and maximum values for your scalable dimension.

After you register a scalable target, you can create and apply scaling
policies using PutScalingPolicy. You can view the scaling policies for
a service namespace using DescribeScalableTargets. If you are no longer
using a scalable target, you can deregister it using
DeregisterScalableTarget.




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





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

