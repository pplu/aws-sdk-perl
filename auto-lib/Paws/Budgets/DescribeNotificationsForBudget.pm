
package Paws::Budgets::DescribeNotificationsForBudget;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', required => 1);
  has BudgetName => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeNotificationsForBudget');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Budgets::DescribeNotificationsForBudgetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Budgets::DescribeNotificationsForBudget - Arguments for method DescribeNotificationsForBudget on Paws::Budgets

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeNotificationsForBudget on the 
AWS Budgets service. Use the attributes of this class
as arguments to method DescribeNotificationsForBudget.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeNotificationsForBudget.

As an example:

  $service_obj->DescribeNotificationsForBudget(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str





=head2 B<REQUIRED> BudgetName => Str





=head2 MaxResults => Int





=head2 NextToken => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeNotificationsForBudget in L<Paws::Budgets>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

