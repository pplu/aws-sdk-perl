
package Paws::Budgets::CreateNotification;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', required => 1);
  has BudgetName => (is => 'ro', isa => 'Str', required => 1);
  has Notification => (is => 'ro', isa => 'Paws::Budgets::Notification', required => 1);
  has Subscribers => (is => 'ro', isa => 'ArrayRef[Paws::Budgets::Subscriber]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateNotification');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Budgets::CreateNotificationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Budgets::CreateNotification - Arguments for method CreateNotification on L<Paws::Budgets>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateNotification on the
L<AWS Budgets|Paws::Budgets> service. Use the attributes of this class
as arguments to method CreateNotification.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateNotification.

=head1 SYNOPSIS

    my $budgets = Paws->service('Budgets');
    my $CreateNotificationResponse = $budgets->CreateNotification(
      AccountId    => 'MyAccountId',
      BudgetName   => 'MyBudgetName',
      Notification => {
        ComparisonOperator =>
          'GREATER_THAN',    # values: GREATER_THAN, LESS_THAN, EQUAL_TO
        NotificationType  => 'ACTUAL',    # values: ACTUAL, FORECASTED
        Threshold         => 1,           # max: 1000000000
        NotificationState => 'OK',        # values: OK, ALARM; OPTIONAL
        ThresholdType =>
          'PERCENTAGE',    # values: PERCENTAGE, ABSOLUTE_VALUE; OPTIONAL
      },
      Subscribers => [
        {
          Address          => 'MySubscriberAddress',   # min: 1, max: 2147483647
          SubscriptionType => 'SNS',                   # values: SNS, EMAIL

        },
        ...
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/budgets/CreateNotification>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The C<accountId> that is associated with the budget that you want to
create a notification for.



=head2 B<REQUIRED> BudgetName => Str

The name of the budget that you want AWS to notify you about. Budget
names must be unique within an account.



=head2 B<REQUIRED> Notification => L<Paws::Budgets::Notification>

The notification that you want to create.



=head2 B<REQUIRED> Subscribers => ArrayRef[L<Paws::Budgets::Subscriber>]

A list of subscribers that you want to associate with the notification.
Each notification can have one SNS subscriber and up to 10 email
subscribers.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateNotification in L<Paws::Budgets>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

