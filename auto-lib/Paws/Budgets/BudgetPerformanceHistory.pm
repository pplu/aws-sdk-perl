package Paws::Budgets::BudgetPerformanceHistory;
  use Moose;
  has BudgetedAndActualAmountsList => (is => 'ro', isa => 'ArrayRef[Paws::Budgets::BudgetedAndActualAmounts]');
  has BudgetName => (is => 'ro', isa => 'Str');
  has BudgetType => (is => 'ro', isa => 'Str');
  has CostFilters => (is => 'ro', isa => 'Paws::Budgets::CostFilters');
  has CostTypes => (is => 'ro', isa => 'Paws::Budgets::CostTypes');
  has TimeUnit => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Budgets::BudgetPerformanceHistory

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Budgets::BudgetPerformanceHistory object:

  $service_obj->Method(Att1 => { BudgetedAndActualAmountsList => $value, ..., TimeUnit => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Budgets::BudgetPerformanceHistory object:

  $result = $service_obj->Method(...);
  $result->Att1->BudgetedAndActualAmountsList

=head1 DESCRIPTION

A history of the state of a budget at the end of the budget's specified
time period.

=head1 ATTRIBUTES


=head2 BudgetedAndActualAmountsList => ArrayRef[L<Paws::Budgets::BudgetedAndActualAmounts>]

  A list of amounts of cost or usage that you created budgets for,
compared to your actual costs or usage.


=head2 BudgetName => Str

  


=head2 BudgetType => Str

  


=head2 CostFilters => L<Paws::Budgets::CostFilters>

  The history of the cost filters for a budget during the specified time
period.


=head2 CostTypes => L<Paws::Budgets::CostTypes>

  The history of the cost types for a budget during the specified time
period.


=head2 TimeUnit => Str

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Budgets>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

