
package Paws::Budgets::CreateBudget;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', required => 1);
  has Budget => (is => 'ro', isa => 'Paws::Budgets::Budget', required => 1);
  has NotificationsWithSubscribers => (is => 'ro', isa => 'ArrayRef[Paws::Budgets::NotificationWithSubscribers]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateBudget');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Budgets::CreateBudgetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Budgets::CreateBudget - Arguments for method CreateBudget on L<Paws::Budgets>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateBudget on the
L<AWS Budgets|Paws::Budgets> service. Use the attributes of this class
as arguments to method CreateBudget.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateBudget.

As an example:

  $service_obj->CreateBudget(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/budgets/CreateBudget>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The C<accountId> that is associated with the budget.



=head2 B<REQUIRED> Budget => L<Paws::Budgets::Budget>

The budget object that you want to create.



=head2 NotificationsWithSubscribers => ArrayRef[L<Paws::Budgets::NotificationWithSubscribers>]

A notification that you want to associate with a budget. A budget can
have up to five notifications, and each notification can have one SNS
subscriber and up to ten email subscribers. If you include
notifications and subscribers in your C<CreateBudget> call, AWS creates
the notifications and subscribers for you.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateBudget in L<Paws::Budgets>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

