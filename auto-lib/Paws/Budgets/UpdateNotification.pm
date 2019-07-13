
package Paws::Budgets::UpdateNotification;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', required => 1);
  has BudgetName => (is => 'ro', isa => 'Str', required => 1);
  has NewNotification => (is => 'ro', isa => 'Paws::Budgets::Notification', required => 1);
  has OldNotification => (is => 'ro', isa => 'Paws::Budgets::Notification', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateNotification');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Budgets::UpdateNotificationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Budgets::UpdateNotification - Arguments for method UpdateNotification on L<Paws::Budgets>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateNotification on the
L<AWS Budgets|Paws::Budgets> service. Use the attributes of this class
as arguments to method UpdateNotification.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateNotification.

=head1 SYNOPSIS

    my $budgets = Paws->service('Budgets');
    my $UpdateNotificationResponse = $budgets->UpdateNotification(
      AccountId       => 'MyAccountId',
      BudgetName      => 'MyBudgetName',
      NewNotification => {
        ComparisonOperator =>
          'GREATER_THAN',    # values: GREATER_THAN, LESS_THAN, EQUAL_TO
        NotificationType  => 'ACTUAL',    # values: ACTUAL, FORECASTED
        Threshold         => 1,           # max: 1000000000
        NotificationState => 'OK',        # values: OK, ALARM; OPTIONAL
        ThresholdType =>
          'PERCENTAGE',    # values: PERCENTAGE, ABSOLUTE_VALUE; OPTIONAL
      },
      OldNotification => {
        ComparisonOperator =>
          'GREATER_THAN',    # values: GREATER_THAN, LESS_THAN, EQUAL_TO
        NotificationType  => 'ACTUAL',    # values: ACTUAL, FORECASTED
        Threshold         => 1,           # max: 1000000000
        NotificationState => 'OK',        # values: OK, ALARM; OPTIONAL
        ThresholdType =>
          'PERCENTAGE',    # values: PERCENTAGE, ABSOLUTE_VALUE; OPTIONAL
      },

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/budgets/UpdateNotification>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The C<accountId> that is associated with the budget whose notification
you want to update.



=head2 B<REQUIRED> BudgetName => Str

The name of the budget whose notification you want to update.



=head2 B<REQUIRED> NewNotification => L<Paws::Budgets::Notification>

The updated notification to be associated with a budget.



=head2 B<REQUIRED> OldNotification => L<Paws::Budgets::Notification>

The previous notification that is associated with a budget.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateNotification in L<Paws::Budgets>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

