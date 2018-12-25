package Paws::Budgets;
  use Moose;
  sub service { 'budgets' }
  sub signing_name { 'budgets' }
  sub version { '2016-10-20' }
  sub target_prefix { 'AWSBudgetServiceGateway' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub CreateBudget {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Budgets::CreateBudget', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateNotification {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Budgets::CreateNotification', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSubscriber {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Budgets::CreateSubscriber', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBudget {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Budgets::DeleteBudget', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteNotification {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Budgets::DeleteNotification', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSubscriber {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Budgets::DeleteSubscriber', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeBudget {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Budgets::DescribeBudget', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeBudgetPerformanceHistory {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Budgets::DescribeBudgetPerformanceHistory', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeBudgets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Budgets::DescribeBudgets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeNotificationsForBudget {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Budgets::DescribeNotificationsForBudget', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSubscribersForNotification {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Budgets::DescribeSubscribersForNotification', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateBudget {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Budgets::UpdateBudget', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateNotification {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Budgets::UpdateNotification', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSubscriber {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Budgets::UpdateSubscriber', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub DescribeAllBudgets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeBudgets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeBudgets(@_, NextToken => $next_result->NextToken);
        push @{ $result->Budgets }, @{ $next_result->Budgets };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Budgets') foreach (@{ $result->Budgets });
        $result = $self->DescribeBudgets(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Budgets') foreach (@{ $result->Budgets });
    }

    return undef
  }
  sub DescribeAllNotificationsForBudget {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeNotificationsForBudget(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeNotificationsForBudget(@_, NextToken => $next_result->NextToken);
        push @{ $result->Notifications }, @{ $next_result->Notifications };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Notifications') foreach (@{ $result->Notifications });
        $result = $self->DescribeNotificationsForBudget(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Notifications') foreach (@{ $result->Notifications });
    }

    return undef
  }
  sub DescribeAllSubscribersForNotification {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeSubscribersForNotification(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeSubscribersForNotification(@_, NextToken => $next_result->NextToken);
        push @{ $result->Subscribers }, @{ $next_result->Subscribers };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Subscribers') foreach (@{ $result->Subscribers });
        $result = $self->DescribeSubscribersForNotification(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Subscribers') foreach (@{ $result->Subscribers });
    }

    return undef
  }


  sub operations { qw/CreateBudget CreateNotification CreateSubscriber DeleteBudget DeleteNotification DeleteSubscriber DescribeBudget DescribeBudgetPerformanceHistory DescribeBudgets DescribeNotificationsForBudget DescribeSubscribersForNotification UpdateBudget UpdateNotification UpdateSubscriber / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Budgets - Perl Interface to AWS AWS Budgets

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Budgets');
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

The AWS Budgets API enables you to use AWS Budgets to plan your service
usage, service costs, and instance reservations. The API reference
provides descriptions, syntax, and usage examples for each of the
actions and data types for AWS Budgets.

Budgets provide you with a way to see the following information:

=over

=item *

How close your plan is to your budgeted amount or to the free tier
limits

=item *

Your usage-to-date, including how much you've used of your Reserved
Instances (RIs)

=item *

Your current estimated charges from AWS, and how much your predicted
usage will accrue in charges by the end of the month

=item *

How much of your budget has been used

=back

AWS updates your budget status several times a day. Budgets track your
unblended costs, subscriptions, refunds, and RIs. You can create the
following types of budgets:

=over

=item *

B<Cost budgets> - Plan how much you want to spend on a service.

=item *

B<Usage budgets> - Plan how much you want to use one or more services.

=item *

B<RI utilization budgets> - Define a utilization threshold, and receive
alerts when your RI usage falls below that threshold. This lets you see
if your RIs are unused or under-utilized.

=item *

B<RI coverage budgets> - Define a coverage threshold, and receive
alerts when the number of your instance hours that are covered by RIs
fall below that threshold. This lets you see how much of your instance
usage is covered by a reservation.

=back

Service Endpoint

The AWS Budgets API provides the following endpoint:

=over

=item *

https://budgets.amazonaws.com

=back

For information about costs that are associated with the AWS Budgets
API, see AWS Cost Management Pricing
(https://aws.amazon.com/aws-cost-management/pricing/).

For the AWS API documentation, see L<https://docs.aws.amazon.com/account-billing/>


=head1 METHODS

=head2 CreateBudget

=over

=item AccountId => Str

=item Budget => L<Paws::Budgets::Budget>

=item [NotificationsWithSubscribers => ArrayRef[L<Paws::Budgets::NotificationWithSubscribers>]]


=back

Each argument is described in detail in: L<Paws::Budgets::CreateBudget>

Returns: a L<Paws::Budgets::CreateBudgetResponse> instance

Creates a budget and, if included, notifications and subscribers.


=head2 CreateNotification

=over

=item AccountId => Str

=item BudgetName => Str

=item Notification => L<Paws::Budgets::Notification>

=item Subscribers => ArrayRef[L<Paws::Budgets::Subscriber>]


=back

Each argument is described in detail in: L<Paws::Budgets::CreateNotification>

Returns: a L<Paws::Budgets::CreateNotificationResponse> instance

Creates a notification. You must create the budget before you create
the associated notification.


=head2 CreateSubscriber

=over

=item AccountId => Str

=item BudgetName => Str

=item Notification => L<Paws::Budgets::Notification>

=item Subscriber => L<Paws::Budgets::Subscriber>


=back

Each argument is described in detail in: L<Paws::Budgets::CreateSubscriber>

Returns: a L<Paws::Budgets::CreateSubscriberResponse> instance

Creates a subscriber. You must create the associated budget and
notification before you create the subscriber.


=head2 DeleteBudget

=over

=item AccountId => Str

=item BudgetName => Str


=back

Each argument is described in detail in: L<Paws::Budgets::DeleteBudget>

Returns: a L<Paws::Budgets::DeleteBudgetResponse> instance

Deletes a budget. You can delete your budget at any time.

Deleting a budget also deletes the notifications and subscribers that
are associated with that budget.


=head2 DeleteNotification

=over

=item AccountId => Str

=item BudgetName => Str

=item Notification => L<Paws::Budgets::Notification>


=back

Each argument is described in detail in: L<Paws::Budgets::DeleteNotification>

Returns: a L<Paws::Budgets::DeleteNotificationResponse> instance

Deletes a notification.

Deleting a notification also deletes the subscribers that are
associated with the notification.


=head2 DeleteSubscriber

=over

=item AccountId => Str

=item BudgetName => Str

=item Notification => L<Paws::Budgets::Notification>

=item Subscriber => L<Paws::Budgets::Subscriber>


=back

Each argument is described in detail in: L<Paws::Budgets::DeleteSubscriber>

Returns: a L<Paws::Budgets::DeleteSubscriberResponse> instance

Deletes a subscriber.

Deleting the last subscriber to a notification also deletes the
notification.


=head2 DescribeBudget

=over

=item AccountId => Str

=item BudgetName => Str


=back

Each argument is described in detail in: L<Paws::Budgets::DescribeBudget>

Returns: a L<Paws::Budgets::DescribeBudgetResponse> instance

Describes a budget.


=head2 DescribeBudgetPerformanceHistory

=over

=item AccountId => Str

=item BudgetName => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [TimePeriod => L<Paws::Budgets::TimePeriod>]


=back

Each argument is described in detail in: L<Paws::Budgets::DescribeBudgetPerformanceHistory>

Returns: a L<Paws::Budgets::DescribeBudgetPerformanceHistoryResponse> instance

Describes the history for C<DAILY>, C<MONTHLY>, and C<QUARTERLY>
budgets. Budget history isn't available for C<ANNUAL> budgets.


=head2 DescribeBudgets

=over

=item AccountId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Budgets::DescribeBudgets>

Returns: a L<Paws::Budgets::DescribeBudgetsResponse> instance

Lists the budgets that are associated with an account.


=head2 DescribeNotificationsForBudget

=over

=item AccountId => Str

=item BudgetName => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Budgets::DescribeNotificationsForBudget>

Returns: a L<Paws::Budgets::DescribeNotificationsForBudgetResponse> instance

Lists the notifications that are associated with a budget.


=head2 DescribeSubscribersForNotification

=over

=item AccountId => Str

=item BudgetName => Str

=item Notification => L<Paws::Budgets::Notification>

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Budgets::DescribeSubscribersForNotification>

Returns: a L<Paws::Budgets::DescribeSubscribersForNotificationResponse> instance

Lists the subscribers that are associated with a notification.


=head2 UpdateBudget

=over

=item AccountId => Str

=item NewBudget => L<Paws::Budgets::Budget>


=back

Each argument is described in detail in: L<Paws::Budgets::UpdateBudget>

Returns: a L<Paws::Budgets::UpdateBudgetResponse> instance

Updates a budget. You can change every part of a budget except for the
C<budgetName> and the C<calculatedSpend>. When you modify a budget, the
C<calculatedSpend> drops to zero until AWS has new usage data to use
for forecasting.


=head2 UpdateNotification

=over

=item AccountId => Str

=item BudgetName => Str

=item NewNotification => L<Paws::Budgets::Notification>

=item OldNotification => L<Paws::Budgets::Notification>


=back

Each argument is described in detail in: L<Paws::Budgets::UpdateNotification>

Returns: a L<Paws::Budgets::UpdateNotificationResponse> instance

Updates a notification.


=head2 UpdateSubscriber

=over

=item AccountId => Str

=item BudgetName => Str

=item NewSubscriber => L<Paws::Budgets::Subscriber>

=item Notification => L<Paws::Budgets::Notification>

=item OldSubscriber => L<Paws::Budgets::Subscriber>


=back

Each argument is described in detail in: L<Paws::Budgets::UpdateSubscriber>

Returns: a L<Paws::Budgets::UpdateSubscriberResponse> instance

Updates a subscriber.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 DescribeAllBudgets(sub { },AccountId => Str, [MaxResults => Int, NextToken => Str])

=head2 DescribeAllBudgets(AccountId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Budgets, passing the object as the first parameter, and the string 'Budgets' as the second parameter 

If not, it will return a a L<Paws::Budgets::DescribeBudgetsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllNotificationsForBudget(sub { },AccountId => Str, BudgetName => Str, [MaxResults => Int, NextToken => Str])

=head2 DescribeAllNotificationsForBudget(AccountId => Str, BudgetName => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Notifications, passing the object as the first parameter, and the string 'Notifications' as the second parameter 

If not, it will return a a L<Paws::Budgets::DescribeNotificationsForBudgetResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllSubscribersForNotification(sub { },AccountId => Str, BudgetName => Str, Notification => L<Paws::Budgets::Notification>, [MaxResults => Int, NextToken => Str])

=head2 DescribeAllSubscribersForNotification(AccountId => Str, BudgetName => Str, Notification => L<Paws::Budgets::Notification>, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Subscribers, passing the object as the first parameter, and the string 'Subscribers' as the second parameter 

If not, it will return a a L<Paws::Budgets::DescribeSubscribersForNotificationResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

