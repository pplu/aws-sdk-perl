package Paws::Budgets::BudgetedAndActualAmounts;
  use Moose;
  has ActualAmount => (is => 'ro', isa => 'Paws::Budgets::Spend');
  has BudgetedAmount => (is => 'ro', isa => 'Paws::Budgets::Spend');
  has TimePeriod => (is => 'ro', isa => 'Paws::Budgets::TimePeriod');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Budgets::BudgetedAndActualAmounts

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Budgets::BudgetedAndActualAmounts object:

  $service_obj->Method(Att1 => { ActualAmount => $value, ..., TimePeriod => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Budgets::BudgetedAndActualAmounts object:

  $result = $service_obj->Method(...);
  $result->Att1->ActualAmount

=head1 DESCRIPTION

The amount of cost or usage that you created the budget for, compared
to your actual costs or usage.

=head1 ATTRIBUTES


=head2 ActualAmount => L<Paws::Budgets::Spend>

  Your actual costs or usage for a budget period.


=head2 BudgetedAmount => L<Paws::Budgets::Spend>

  The amount of cost or usage that you created the budget for.


=head2 TimePeriod => L<Paws::Budgets::TimePeriod>

  The time period covered by this budget comparison.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Budgets>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

