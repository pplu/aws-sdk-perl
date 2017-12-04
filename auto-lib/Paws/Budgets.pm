package Paws::Budgets;
  use Moose;
  sub service { 'budgets' }
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

All public APIs for AWS Budgets

=head1 METHODS

=head2 CreateBudget(AccountId => Str, Budget => L<Paws::Budgets::Budget>, [NotificationsWithSubscribers => ArrayRef[L<Paws::Budgets::NotificationWithSubscribers>]])

Each argument is described in detail in: L<Paws::Budgets::CreateBudget>

Returns: a L<Paws::Budgets::CreateBudgetResponse> instance

Create a new budget


=head2 CreateNotification(AccountId => Str, BudgetName => Str, Notification => L<Paws::Budgets::Notification>, Subscribers => ArrayRef[L<Paws::Budgets::Subscriber>])

Each argument is described in detail in: L<Paws::Budgets::CreateNotification>

Returns: a L<Paws::Budgets::CreateNotificationResponse> instance

Create a new Notification with subscribers for a budget


=head2 CreateSubscriber(AccountId => Str, BudgetName => Str, Notification => L<Paws::Budgets::Notification>, Subscriber => L<Paws::Budgets::Subscriber>)

Each argument is described in detail in: L<Paws::Budgets::CreateSubscriber>

Returns: a L<Paws::Budgets::CreateSubscriberResponse> instance

Create a new Subscriber for a notification


=head2 DeleteBudget(AccountId => Str, BudgetName => Str)

Each argument is described in detail in: L<Paws::Budgets::DeleteBudget>

Returns: a L<Paws::Budgets::DeleteBudgetResponse> instance

Delete a budget and related notifications


=head2 DeleteNotification(AccountId => Str, BudgetName => Str, Notification => L<Paws::Budgets::Notification>)

Each argument is described in detail in: L<Paws::Budgets::DeleteNotification>

Returns: a L<Paws::Budgets::DeleteNotificationResponse> instance

Delete a notification and related subscribers


=head2 DeleteSubscriber(AccountId => Str, BudgetName => Str, Notification => L<Paws::Budgets::Notification>, Subscriber => L<Paws::Budgets::Subscriber>)

Each argument is described in detail in: L<Paws::Budgets::DeleteSubscriber>

Returns: a L<Paws::Budgets::DeleteSubscriberResponse> instance

Delete a Subscriber for a notification


=head2 DescribeBudget(AccountId => Str, BudgetName => Str)

Each argument is described in detail in: L<Paws::Budgets::DescribeBudget>

Returns: a L<Paws::Budgets::DescribeBudgetResponse> instance

Get a single budget


=head2 DescribeBudgets(AccountId => Str, [MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::Budgets::DescribeBudgets>

Returns: a L<Paws::Budgets::DescribeBudgetsResponse> instance

Get all budgets for an account


=head2 DescribeNotificationsForBudget(AccountId => Str, BudgetName => Str, [MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::Budgets::DescribeNotificationsForBudget>

Returns: a L<Paws::Budgets::DescribeNotificationsForBudgetResponse> instance

Get notifications of a budget


=head2 DescribeSubscribersForNotification(AccountId => Str, BudgetName => Str, Notification => L<Paws::Budgets::Notification>, [MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::Budgets::DescribeSubscribersForNotification>

Returns: a L<Paws::Budgets::DescribeSubscribersForNotificationResponse> instance

Get subscribers of a notification


=head2 UpdateBudget(AccountId => Str, NewBudget => L<Paws::Budgets::Budget>)

Each argument is described in detail in: L<Paws::Budgets::UpdateBudget>

Returns: a L<Paws::Budgets::UpdateBudgetResponse> instance

Update the information of a budget already created


=head2 UpdateNotification(AccountId => Str, BudgetName => Str, NewNotification => L<Paws::Budgets::Notification>, OldNotification => L<Paws::Budgets::Notification>)

Each argument is described in detail in: L<Paws::Budgets::UpdateNotification>

Returns: a L<Paws::Budgets::UpdateNotificationResponse> instance

Update the information about a notification already created


=head2 UpdateSubscriber(AccountId => Str, BudgetName => Str, NewSubscriber => L<Paws::Budgets::Subscriber>, Notification => L<Paws::Budgets::Notification>, OldSubscriber => L<Paws::Budgets::Subscriber>)

Each argument is described in detail in: L<Paws::Budgets::UpdateSubscriber>

Returns: a L<Paws::Budgets::UpdateSubscriberResponse> instance

Update a subscriber




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

