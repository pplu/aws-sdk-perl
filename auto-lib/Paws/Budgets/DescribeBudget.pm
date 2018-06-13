
package Paws::Budgets::DescribeBudget;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', required => 1);
  has BudgetName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeBudget');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Budgets::DescribeBudgetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Budgets::DescribeBudget - Arguments for method DescribeBudget on L<Paws::Budgets>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeBudget on the
L<AWS Budgets|Paws::Budgets> service. Use the attributes of this class
as arguments to method DescribeBudget.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeBudget.

=head1 SYNOPSIS

    my $budgets = Paws->service('Budgets');
    my $DescribeBudgetResponse = $budgets->DescribeBudget(
      AccountId  => 'MyAccountId',
      BudgetName => 'MyBudgetName',

    );

    # Results:
    my $Budget = $DescribeBudgetResponse->Budget;

    # Returns a L<Paws::Budgets::DescribeBudgetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/budgets/DescribeBudget>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The C<accountId> that is associated with the budget that you want a
description of.



=head2 B<REQUIRED> BudgetName => Str

The name of the budget that you want a description of.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeBudget in L<Paws::Budgets>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

