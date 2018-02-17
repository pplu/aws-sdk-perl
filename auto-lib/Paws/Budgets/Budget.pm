package Paws::Budgets::Budget;
  use Moose;
  has BudgetLimit => (is => 'ro', isa => 'Paws::Budgets::Spend');
  has BudgetName => (is => 'ro', isa => 'Str', required => 1);
  has BudgetType => (is => 'ro', isa => 'Str', required => 1);
  has CalculatedSpend => (is => 'ro', isa => 'Paws::Budgets::CalculatedSpend');
  has CostFilters => (is => 'ro', isa => 'Paws::Budgets::CostFilters');
  has CostTypes => (is => 'ro', isa => 'Paws::Budgets::CostTypes');
  has TimePeriod => (is => 'ro', isa => 'Paws::Budgets::TimePeriod');
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

Represents the output of the C<CreateBudget> operation. The content
consists of the detailed metadata and data file information, and the
current status of the C<budget>.

The ARN pattern for a budget is:
C<arn:aws:budgetservice::AccountId:budget/budgetName>

=head1 ATTRIBUTES


=head2 BudgetLimit => L<Paws::Budgets::Spend>

  The total amount of cost, usage, or RI utilization that you want to
track with your budget.

C<BudgetLimit> is required for cost or usage budgets, but optional for
RI utilization budgets. RI utilization budgets default to the only
valid value for RI utilization budgets, which is C<100>.


=head2 B<REQUIRED> BudgetName => Str

  The name of a budget. Unique within accounts. C<:> and C<\> characters
are not allowed in the C<BudgetName>.


=head2 B<REQUIRED> BudgetType => Str

  Whether this budget tracks monetary costs, usage, or RI utilization.


=head2 CalculatedSpend => L<Paws::Budgets::CalculatedSpend>

  The actual and forecasted cost or usage being tracked by a budget.


=head2 CostFilters => L<Paws::Budgets::CostFilters>

  The cost filters applied to a budget, such as service or region.


=head2 CostTypes => L<Paws::Budgets::CostTypes>

  The types of costs included in this budget.


=head2 TimePeriod => L<Paws::Budgets::TimePeriod>

  The period of time covered by a budget. Has a start date and an end
date. The start date must come before the end date. There are no
restrictions on the end date.

If you created your budget and didn't specify a start date, AWS
defaults to the start of your chosen time period (i.e. DAILY, MONTHLY,
QUARTERLY, ANNUALLY). For example, if you created your budget on
January 24th 2018, chose C<DAILY>, and didn't set a start date, AWS set
your start date to C<01/24/18 00:00 UTC>. If you chose C<MONTHLY>, AWS
set your start date to C<01/01/18 00:00 UTC>. If you didn't specify an
end date, AWS set your end date to C<06/15/87 00:00 UTC>. The defaults
are the same for the AWS Billing and Cost Management console and the
API.

You can change either date with the C<UpdateBudget> operation.

After the end date, AWS deletes the budget and all associated
notifications and subscribers.


=head2 B<REQUIRED> TimeUnit => Str

  The length of time until a budget resets the actual and forecasted
spend.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Budgets>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

