
package Paws::Budgets::DeleteSubscriber;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', required => 1);
  has BudgetName => (is => 'ro', isa => 'Str', required => 1);
  has Notification => (is => 'ro', isa => 'Paws::Budgets::Notification', required => 1);
  has Subscriber => (is => 'ro', isa => 'Paws::Budgets::Subscriber', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteSubscriber');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Budgets::DeleteSubscriberResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Budgets::DeleteSubscriber - Arguments for method DeleteSubscriber on L<Paws::Budgets>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteSubscriber on the
L<AWS Budgets|Paws::Budgets> service. Use the attributes of this class
as arguments to method DeleteSubscriber.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteSubscriber.

=head1 SYNOPSIS

    my $budgets = Paws->service('Budgets');
    my $DeleteSubscriberResponse = $budgets->DeleteSubscriber(
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
      Subscriber => {
        Address          => 'MySubscriberAddress',    # min: 1, max: 2147483647
        SubscriptionType => 'SNS',                    # values: SNS, EMAIL

      },

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/budgets/DeleteSubscriber>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The C<accountId> that is associated with the budget whose subscriber
you want to delete.



=head2 B<REQUIRED> BudgetName => Str

The name of the budget whose subscriber you want to delete.



=head2 B<REQUIRED> Notification => L<Paws::Budgets::Notification>

The notification whose subscriber you want to delete.



=head2 B<REQUIRED> Subscriber => L<Paws::Budgets::Subscriber>

The subscriber that you want to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteSubscriber in L<Paws::Budgets>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

