
package Paws::Budgets::DescribeBudgetAction;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', required => 1);
  has ActionId => (is => 'ro', isa => 'Str', required => 1);
  has BudgetName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeBudgetAction');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Budgets::DescribeBudgetActionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Budgets::DescribeBudgetAction - Arguments for method DescribeBudgetAction on L<Paws::Budgets>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeBudgetAction on the
L<AWS Budgets|Paws::Budgets> service. Use the attributes of this class
as arguments to method DescribeBudgetAction.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeBudgetAction.

=head1 SYNOPSIS

    my $budgets = Paws->service('Budgets');
    my $DescribeBudgetActionResponse = $budgets->DescribeBudgetAction(
      AccountId  => 'MyAccountId',
      ActionId   => 'MyActionId',
      BudgetName => 'MyBudgetName',

    );

    # Results:
    my $AccountId  = $DescribeBudgetActionResponse->AccountId;
    my $Action     = $DescribeBudgetActionResponse->Action;
    my $BudgetName = $DescribeBudgetActionResponse->BudgetName;

    # Returns a L<Paws::Budgets::DescribeBudgetActionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/budgets/DescribeBudgetAction>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str





=head2 B<REQUIRED> ActionId => Str

A system-generated universally unique identifier (UUID) for the action.



=head2 B<REQUIRED> BudgetName => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeBudgetAction in L<Paws::Budgets>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

