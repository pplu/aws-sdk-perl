package Paws::CodeStarNotifications;
  use Moose;
  sub service { 'codestar-notifications' }
  sub signing_name { 'codestar-notifications' }
  sub version { '2019-10-15' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateNotificationRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeStarNotifications::CreateNotificationRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteNotificationRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeStarNotifications::DeleteNotificationRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTarget {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeStarNotifications::DeleteTarget', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeNotificationRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeStarNotifications::DescribeNotificationRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEventTypes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeStarNotifications::ListEventTypes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListNotificationRules {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeStarNotifications::ListNotificationRules', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeStarNotifications::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTargets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeStarNotifications::ListTargets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub Subscribe {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeStarNotifications::Subscribe', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeStarNotifications::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub Unsubscribe {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeStarNotifications::Unsubscribe', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeStarNotifications::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateNotificationRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeStarNotifications::UpdateNotificationRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllEventTypes {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListEventTypes(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListEventTypes(@_, NextToken => $next_result->NextToken);
        push @{ $result->EventTypes }, @{ $next_result->EventTypes };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'EventTypes') foreach (@{ $result->EventTypes });
        $result = $self->ListEventTypes(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'EventTypes') foreach (@{ $result->EventTypes });
    }

    return undef
  }
  sub ListAllNotificationRules {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListNotificationRules(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListNotificationRules(@_, NextToken => $next_result->NextToken);
        push @{ $result->NotificationRules }, @{ $next_result->NotificationRules };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'NotificationRules') foreach (@{ $result->NotificationRules });
        $result = $self->ListNotificationRules(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'NotificationRules') foreach (@{ $result->NotificationRules });
    }

    return undef
  }
  sub ListAllTargets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTargets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListTargets(@_, NextToken => $next_result->NextToken);
        push @{ $result->Targets }, @{ $next_result->Targets };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Targets') foreach (@{ $result->Targets });
        $result = $self->ListTargets(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Targets') foreach (@{ $result->Targets });
    }

    return undef
  }


  sub operations { qw/CreateNotificationRule DeleteNotificationRule DeleteTarget DescribeNotificationRule ListEventTypes ListNotificationRules ListTagsForResource ListTargets Subscribe TagResource Unsubscribe UntagResource UpdateNotificationRule / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeStarNotifications - Perl Interface to AWS AWS CodeStar Notifications

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('CodeStarNotifications');
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

This AWS CodeStar Notifications API Reference provides descriptions and
usage examples of the operations and data types for the AWS CodeStar
Notifications API. You can use the AWS CodeStar Notifications API to
work with the following objects:

Notification rules, by calling the following:

=over

=item *

CreateNotificationRule, which creates a notification rule for a
resource in your account.

=item *

DeleteNotificationRule, which deletes a notification rule.

=item *

DescribeNotificationRule, which provides information about a
notification rule.

=item *

ListNotificationRules, which lists the notification rules associated
with your account.

=item *

UpdateNotificationRule, which changes the name, events, or targets
associated with a notification rule.

=item *

Subscribe, which subscribes a target to a notification rule.

=item *

Unsubscribe, which removes a target from a notification rule.

=back

Targets, by calling the following:

=over

=item *

DeleteTarget, which removes a notification rule target (SNS topic) from
a notification rule.

=item *

ListTargets, which lists the targets associated with a notification
rule.

=back

Events, by calling the following:

=over

=item *

ListEventTypes, which lists the event types you can include in a
notification rule.

=back

Tags, by calling the following:

=over

=item *

ListTagsForResource, which lists the tags already associated with a
notification rule in your account.

=item *

TagResource, which associates a tag you provide with a notification
rule in your account.

=item *

UntagResource, which removes a tag from a notification rule in your
account.

=back

For information about how to use AWS CodeStar Notifications, see link
in the CodeStarNotifications User Guide.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codestar-notifications-2019-10-15>


=head1 METHODS

=head2 CreateNotificationRule

=over

=item DetailType => Str

=item EventTypeIds => ArrayRef[Str|Undef]

=item Name => Str

=item Resource => Str

=item Targets => ArrayRef[L<Paws::CodeStarNotifications::Target>]

=item [ClientRequestToken => Str]

=item [Status => Str]

=item [Tags => L<Paws::CodeStarNotifications::Tags>]


=back

Each argument is described in detail in: L<Paws::CodeStarNotifications::CreateNotificationRule>

Returns: a L<Paws::CodeStarNotifications::CreateNotificationRuleResult> instance

Creates a notification rule for a resource. The rule specifies the
events you want notifications about and the targets (such as SNS
topics) where you want to receive them.


=head2 DeleteNotificationRule

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::CodeStarNotifications::DeleteNotificationRule>

Returns: a L<Paws::CodeStarNotifications::DeleteNotificationRuleResult> instance

Deletes a notification rule for a resource.


=head2 DeleteTarget

=over

=item TargetAddress => Str

=item [ForceUnsubscribeAll => Bool]


=back

Each argument is described in detail in: L<Paws::CodeStarNotifications::DeleteTarget>

Returns: a L<Paws::CodeStarNotifications::DeleteTargetResult> instance

Deletes a specified target for notifications.


=head2 DescribeNotificationRule

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::CodeStarNotifications::DescribeNotificationRule>

Returns: a L<Paws::CodeStarNotifications::DescribeNotificationRuleResult> instance

Returns information about a specified notification rule.


=head2 ListEventTypes

=over

=item [Filters => ArrayRef[L<Paws::CodeStarNotifications::ListEventTypesFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CodeStarNotifications::ListEventTypes>

Returns: a L<Paws::CodeStarNotifications::ListEventTypesResult> instance

Returns information about the event types available for configuring
notifications.


=head2 ListNotificationRules

=over

=item [Filters => ArrayRef[L<Paws::CodeStarNotifications::ListNotificationRulesFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CodeStarNotifications::ListNotificationRules>

Returns: a L<Paws::CodeStarNotifications::ListNotificationRulesResult> instance

Returns a list of the notification rules for an AWS account.


=head2 ListTagsForResource

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::CodeStarNotifications::ListTagsForResource>

Returns: a L<Paws::CodeStarNotifications::ListTagsForResourceResult> instance

Returns a list of the tags associated with a notification rule.


=head2 ListTargets

=over

=item [Filters => ArrayRef[L<Paws::CodeStarNotifications::ListTargetsFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CodeStarNotifications::ListTargets>

Returns: a L<Paws::CodeStarNotifications::ListTargetsResult> instance

Returns a list of the notification rule targets for an AWS account.


=head2 Subscribe

=over

=item Arn => Str

=item Target => L<Paws::CodeStarNotifications::Target>

=item [ClientRequestToken => Str]


=back

Each argument is described in detail in: L<Paws::CodeStarNotifications::Subscribe>

Returns: a L<Paws::CodeStarNotifications::SubscribeResult> instance

Creates an association between a notification rule and an SNS topic so
that the associated target can receive notifications when the events
described in the rule are triggered.


=head2 TagResource

=over

=item Arn => Str

=item Tags => L<Paws::CodeStarNotifications::Tags>


=back

Each argument is described in detail in: L<Paws::CodeStarNotifications::TagResource>

Returns: a L<Paws::CodeStarNotifications::TagResourceResult> instance

Associates a set of provided tags with a notification rule.


=head2 Unsubscribe

=over

=item Arn => Str

=item TargetAddress => Str


=back

Each argument is described in detail in: L<Paws::CodeStarNotifications::Unsubscribe>

Returns: a L<Paws::CodeStarNotifications::UnsubscribeResult> instance

Removes an association between a notification rule and an Amazon SNS
topic so that subscribers to that topic stop receiving notifications
when the events described in the rule are triggered.


=head2 UntagResource

=over

=item Arn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::CodeStarNotifications::UntagResource>

Returns: a L<Paws::CodeStarNotifications::UntagResourceResult> instance

Removes the association between one or more provided tags and a
notification rule.


=head2 UpdateNotificationRule

=over

=item Arn => Str

=item [DetailType => Str]

=item [EventTypeIds => ArrayRef[Str|Undef]]

=item [Name => Str]

=item [Status => Str]

=item [Targets => ArrayRef[L<Paws::CodeStarNotifications::Target>]]


=back

Each argument is described in detail in: L<Paws::CodeStarNotifications::UpdateNotificationRule>

Returns: a L<Paws::CodeStarNotifications::UpdateNotificationRuleResult> instance

Updates a notification rule for a resource. You can change the events
that trigger the notification rule, the status of the rule, and the
targets that receive the notifications.

To add or remove tags for a notification rule, you must use TagResource
and UntagResource.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllEventTypes(sub { },[Filters => ArrayRef[L<Paws::CodeStarNotifications::ListEventTypesFilter>], MaxResults => Int, NextToken => Str])

=head2 ListAllEventTypes([Filters => ArrayRef[L<Paws::CodeStarNotifications::ListEventTypesFilter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - EventTypes, passing the object as the first parameter, and the string 'EventTypes' as the second parameter 

If not, it will return a a L<Paws::CodeStarNotifications::ListEventTypesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllNotificationRules(sub { },[Filters => ArrayRef[L<Paws::CodeStarNotifications::ListNotificationRulesFilter>], MaxResults => Int, NextToken => Str])

=head2 ListAllNotificationRules([Filters => ArrayRef[L<Paws::CodeStarNotifications::ListNotificationRulesFilter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - NotificationRules, passing the object as the first parameter, and the string 'NotificationRules' as the second parameter 

If not, it will return a a L<Paws::CodeStarNotifications::ListNotificationRulesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTargets(sub { },[Filters => ArrayRef[L<Paws::CodeStarNotifications::ListTargetsFilter>], MaxResults => Int, NextToken => Str])

=head2 ListAllTargets([Filters => ArrayRef[L<Paws::CodeStarNotifications::ListTargetsFilter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Targets, passing the object as the first parameter, and the string 'Targets' as the second parameter 

If not, it will return a a L<Paws::CodeStarNotifications::ListTargetsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

