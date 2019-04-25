
package Paws::Budgets::DeleteBudget;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', required => 1);
  has BudgetName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteBudget');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Budgets::DeleteBudgetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Budgets::DeleteBudget - Arguments for method DeleteBudget on L<Paws::Budgets>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteBudget on the
L<AWS Budgets|Paws::Budgets> service. Use the attributes of this class
as arguments to method DeleteBudget.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteBudget.

=head1 SYNOPSIS

    my $budgets = Paws->service('Budgets');
    my $DeleteBudgetResponse = $budgets->DeleteBudget(
      AccountId  => 'MyAccountId',
      BudgetName => 'MyBudgetName',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/budgets/DeleteBudget>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The C<accountId> that is associated with the budget that you want to
delete.



=head2 B<REQUIRED> BudgetName => Str

The name of the budget that you want to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteBudget in L<Paws::Budgets>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

