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
  


  sub operations { qw/CreateBudget CreateNotification CreateSubscriber DeleteBudget DeleteNotification DeleteSubscriber DescribeBudget DescribeBudgets DescribeNotificationsForBudget DescribeSubscribersForNotification UpdateBudget UpdateNotification UpdateSubscriber / }

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

Budgets enable you to plan your service usage, service costs, and your
RI utilization. You can also track how close your plan is to your
budgeted amount or to the free tier limits. Budgets provide you with a
quick way to see your usage-to-date and current estimated charges from
AWS and to see how much your predicted usage accrues in charges by the
end of the month. Budgets also compare current estimates and charges to
the amount that you indicated you want to use or spend and lets you see
how much of your budget has been used. AWS updates your budget status
several times a day. Budgets track your unblended costs, subscriptions,
and refunds. You can create the following types of budgets:

=over

=item *

Cost budgets allow you to say how much you want to spend on a service.

=item *

Usage budgets allow you to say how many hours you want to use for one
or more services.

=item *

RI utilization budgets allow you to define a utilization threshold and
receive alerts when RIs are tracking below that threshold.

=back

You can create up to 20,000 budgets per AWS master account. Your first
two budgets are free of charge. Each additional budget costs $0.02 per
day. You can set up optional notifications that warn you if you exceed,
or are forecasted to exceed, your budgeted amount. You can have
notifications sent to an Amazon SNS topic, to an email address, or to
both. For more information, see Creating an Amazon SNS Topic for Budget
Notifications
(https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/budgets-sns-policy.html).
AWS Free Tier usage alerts via AWS Budgets are provided for you, and do
not count toward your budget limits.

Service Endpoint

The AWS Budgets API provides the following endpoint:

=over

=item *

https://budgets.amazonaws.com

=back

For information about costs associated with the AWS Budgets API, see
AWS Cost Management Pricing
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

B<Deleting a budget also deletes the notifications and subscribers
associated with that budget.>


=head2 DeleteNotification

=over

=item AccountId => Str

=item BudgetName => Str

=item Notification => L<Paws::Budgets::Notification>


=back

Each argument is described in detail in: L<Paws::Budgets::DeleteNotification>

Returns: a L<Paws::Budgets::DeleteNotificationResponse> instance

Deletes a notification.

B<Deleting a notification also deletes the subscribers associated with
the notification.>


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

B<Deleting the last subscriber to a notification also deletes the
notification.>


=head2 DescribeBudget

=over

=item AccountId => Str

=item BudgetName => Str


=back

Each argument is described in detail in: L<Paws::Budgets::DescribeBudget>

Returns: a L<Paws::Budgets::DescribeBudgetResponse> instance

Describes a budget.


=head2 DescribeBudgets

=over

=item AccountId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Budgets::DescribeBudgets>

Returns: a L<Paws::Budgets::DescribeBudgetsResponse> instance

Lists the budgets associated with an account.


=head2 DescribeNotificationsForBudget

=over

=item AccountId => Str

=item BudgetName => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Budgets::DescribeNotificationsForBudget>

Returns: a L<Paws::Budgets::DescribeNotificationsForBudgetResponse> instance

Lists the notifications associated with a budget.


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

Lists the subscribers associated with a notification.


=head2 UpdateBudget

=over

=item AccountId => Str

=item NewBudget => L<Paws::Budgets::Budget>


=back

Each argument is described in detail in: L<Paws::Budgets::UpdateBudget>

Returns: a L<Paws::Budgets::UpdateBudgetResponse> instance

Updates a budget. You can change every part of a budget except for the
C<budgetName> and the C<calculatedSpend>. When a budget is modified,
the C<calculatedSpend> drops to zero until AWS has new usage data to
use for forecasting.


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




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

