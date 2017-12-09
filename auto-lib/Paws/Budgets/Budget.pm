package Paws::Budgets::Budget;
  use Moose;
  has BudgetLimit => (is => 'ro', isa => 'Paws::Budgets::Spend', required => 1);
  has BudgetName => (is => 'ro', isa => 'Str', required => 1);
  has BudgetType => (is => 'ro', isa => 'Str', required => 1);
  has CalculatedSpend => (is => 'ro', isa => 'Paws::Budgets::CalculatedSpend');
  has CostFilters => (is => 'ro', isa => 'Paws::Budgets::CostFilters');
  has CostTypes => (is => 'ro', isa => 'Paws::Budgets::CostTypes');
  has TimePeriod => (is => 'ro', isa => 'Paws::Budgets::TimePeriod', required => 1);
  has TimeUnit => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Budgets::Budget

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Budgets::Budget object:

  $service_obj->Method(Att1 => { BudgetLimit => $value, ..., TimeUnit => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Budgets::Budget object:

  $result = $service_obj->Method(...);
  $result->Att1->BudgetLimit

=head1 DESCRIPTION

AWS Budget model

=head1 ATTRIBUTES


=head2 B<REQUIRED> BudgetLimit => L<Paws::Budgets::Spend>

  


=head2 B<REQUIRED> BudgetName => Str

  


=head2 B<REQUIRED> BudgetType => Str

  


=head2 CalculatedSpend => L<Paws::Budgets::CalculatedSpend>

  


=head2 CostFilters => L<Paws::Budgets::CostFilters>

  


=head2 CostTypes => L<Paws::Budgets::CostTypes>

  


=head2 B<REQUIRED> TimePeriod => L<Paws::Budgets::TimePeriod>

  


=head2 B<REQUIRED> TimeUnit => Str

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Budgets>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

