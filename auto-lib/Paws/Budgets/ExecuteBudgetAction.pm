
package Paws::Budgets::ExecuteBudgetAction;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', required => 1);
  has ActionId => (is => 'ro', isa => 'Str', required => 1);
  has BudgetName => (is => 'ro', isa => 'Str', required => 1);
  has ExecutionType => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ExecuteBudgetAction');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Budgets::ExecuteBudgetActionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Budgets::ExecuteBudgetAction - Arguments for method ExecuteBudgetAction on L<Paws::Budgets>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ExecuteBudgetAction on the
L<AWS Budgets|Paws::Budgets> service. Use the attributes of this class
as arguments to method ExecuteBudgetAction.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ExecuteBudgetAction.

=head1 SYNOPSIS

    my $budgets = Paws->service('Budgets');
    my $ExecuteBudgetActionResponse = $budgets->ExecuteBudgetAction(
      AccountId     => 'MyAccountId',
      ActionId      => 'MyActionId',
      BudgetName    => 'MyBudgetName',
      ExecutionType => 'APPROVE_BUDGET_ACTION',

    );

    # Results:
    my $AccountId     = $ExecuteBudgetActionResponse->AccountId;
    my $ActionId      = $ExecuteBudgetActionResponse->ActionId;
    my $BudgetName    = $ExecuteBudgetActionResponse->BudgetName;
    my $ExecutionType = $ExecuteBudgetActionResponse->ExecutionType;

    # Returns a L<Paws::Budgets::ExecuteBudgetActionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/budgets/ExecuteBudgetAction>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str





=head2 B<REQUIRED> ActionId => Str

A system-generated universally unique identifier (UUID) for the action.



=head2 B<REQUIRED> BudgetName => Str





=head2 B<REQUIRED> ExecutionType => Str

The type of execution.

Valid values are: C<"APPROVE_BUDGET_ACTION">, C<"RETRY_BUDGET_ACTION">, C<"REVERSE_BUDGET_ACTION">, C<"RESET_BUDGET_ACTION">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ExecuteBudgetAction in L<Paws::Budgets>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

