# Generated from default/object.tt
package Paws::Budgets::BudgetedAndActualAmounts;
  use Moo;
  use Types::Standard qw//;
  use Paws::Budgets::Types qw/Budgets_Spend Budgets_TimePeriod/;
  has ActualAmount => (is => 'ro', isa => Budgets_Spend);
  has BudgetedAmount => (is => 'ro', isa => Budgets_Spend);
  has TimePeriod => (is => 'ro', isa => Budgets_TimePeriod);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ActualAmount' => {
                                   'class' => 'Paws::Budgets::Spend',
                                   'type' => 'Budgets_Spend'
                                 },
               'BudgetedAmount' => {
                                     'class' => 'Paws::Budgets::Spend',
                                     'type' => 'Budgets_Spend'
                                   },
               'TimePeriod' => {
                                 'class' => 'Paws::Budgets::TimePeriod',
                                 'type' => 'Budgets_TimePeriod'
                               }
             }
}
;
    return $Params_map;
  }


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


=head2 ActualAmount => Budgets_Spend

  Your actual costs or usage for a budget period.


=head2 BudgetedAmount => Budgets_Spend

  The amount of cost or usage that you created the budget for.


=head2 TimePeriod => Budgets_TimePeriod

  The time period covered by this budget comparison.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Budgets>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

