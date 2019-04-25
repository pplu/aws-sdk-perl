package Paws::Budgets::Budget;
  use Moose;
  has BudgetLimit => (is => 'ro', isa => 'Paws::Budgets::Spend');
  has BudgetName => (is => 'ro', isa => 'Str', required => 1);
  has BudgetType => (is => 'ro', isa => 'Str', required => 1);
  has CalculatedSpend => (is => 'ro', isa => 'Paws::Budgets::CalculatedSpend');
  has CostFilters => (is => 'ro', isa => 'Paws::Budgets::CostFilters');
  has CostTypes => (is => 'ro', isa => 'Paws::Budgets::CostTypes');
  has LastUpdatedTime => (is => 'ro', isa => 'Str');
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
current status of the C<budget> object.

This is the ARN pattern for a budget:

C<arn:aws:budgetservice::AccountId:budget/budgetName>

=head1 ATTRIBUTES


=head2 BudgetLimit => L<Paws::Budgets::Spend>

  The total amount of cost, usage, RI utilization, or RI coverage that
you want to track with your budget.

C<BudgetLimit> is required for cost or usage budgets, but optional for
RI utilization or coverage budgets. RI utilization or coverage budgets
default to C<100>, which is the only valid value for RI utilization or
coverage budgets.


=head2 B<REQUIRED> BudgetName => Str

  The name of a budget. The name must be unique within accounts. The C<:>
and C<\> characters aren't allowed in C<BudgetName>.


=head2 B<REQUIRED> BudgetType => Str

  Whether this budget tracks monetary costs, usage, RI utilization, or RI
coverage.


=head2 CalculatedSpend => L<Paws::Budgets::CalculatedSpend>

  The actual and forecasted cost or usage that the budget tracks.


=head2 CostFilters => L<Paws::Budgets::CostFilters>

  The cost filters, such as service or region, that are applied to a
budget.

AWS Budgets supports the following services as a filter for RI budgets:

=over

=item *

Amazon Elastic Compute Cloud - Compute

=item *

Amazon Redshift

=item *

Amazon Relational Database Service

=item *

Amazon ElastiCache

=item *

Amazon Elasticsearch Service

=back



=head2 CostTypes => L<Paws::Budgets::CostTypes>

  The types of costs that are included in this C<COST> budget.

C<USAGE>, C<RI_UTILIZATION>, and C<RI_COVERAGE> budgets do not have
C<CostTypes>.


=head2 LastUpdatedTime => Str

  The last time that you updated this budget.


=head2 TimePeriod => L<Paws::Budgets::TimePeriod>

  The period of time that is covered by a budget. The period has a start
date and an end date. The start date must come before the end date. The
end date must come before C<06/15/87 00:00 UTC>.

If you create your budget and don't specify a start date, AWS defaults
to the start of your chosen time period (DAILY, MONTHLY, QUARTERLY, or
ANNUALLY). For example, if you created your budget on January 24, 2018,
chose C<DAILY>, and didn't set a start date, AWS set your start date to
C<01/24/18 00:00 UTC>. If you chose C<MONTHLY>, AWS set your start date
to C<01/01/18 00:00 UTC>. If you didn't specify an end date, AWS set
your end date to C<06/15/87 00:00 UTC>. The defaults are the same for
the AWS Billing and Cost Management console and the API.

You can change either date with the C<UpdateBudget> operation.

After the end date, AWS deletes the budget and all associated
notifications and subscribers.


=head2 B<REQUIRED> TimeUnit => Str

  The length of time until a budget resets the actual and forecasted
spend. C<DAILY> is available only for C<RI_UTILIZATION> and
C<RI_COVERAGE> budgets.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Budgets>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

