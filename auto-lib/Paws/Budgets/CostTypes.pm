package Paws::Budgets::CostTypes;
  use Moose;
  has IncludeCredit => (is => 'ro', isa => 'Bool');
  has IncludeDiscount => (is => 'ro', isa => 'Bool');
  has IncludeOtherSubscription => (is => 'ro', isa => 'Bool');
  has IncludeRecurring => (is => 'ro', isa => 'Bool');
  has IncludeRefund => (is => 'ro', isa => 'Bool');
  has IncludeSubscription => (is => 'ro', isa => 'Bool');
  has IncludeSupport => (is => 'ro', isa => 'Bool');
  has IncludeTax => (is => 'ro', isa => 'Bool');
  has IncludeUpfront => (is => 'ro', isa => 'Bool');
  has UseAmortized => (is => 'ro', isa => 'Bool');
  has UseBlended => (is => 'ro', isa => 'Bool');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Budgets::CostTypes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Budgets::CostTypes object:

  $service_obj->Method(Att1 => { IncludeCredit => $value, ..., UseBlended => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Budgets::CostTypes object:

  $result = $service_obj->Method(...);
  $result->Att1->IncludeCredit

=head1 DESCRIPTION

This includes the options for getting the cost of a budget.

=head1 ATTRIBUTES


=head2 IncludeCredit => Bool

  A boolean value whether to include credits in the cost budget.


=head2 IncludeDiscount => Bool

  A boolean value whether to include discounts in the cost budget.


=head2 IncludeOtherSubscription => Bool

  A boolean value whether to include other subscription costs in the cost
budget.


=head2 IncludeRecurring => Bool

  A boolean value whether to include recurring costs in the cost budget.


=head2 IncludeRefund => Bool

  A boolean value whether to include refunds in the cost budget.


=head2 IncludeSubscription => Bool

  A boolean value whether to include subscriptions in the cost budget.


=head2 IncludeSupport => Bool

  A boolean value whether to include support costs in the cost budget.


=head2 IncludeTax => Bool

  A boolean value whether to include tax in the cost budget.


=head2 IncludeUpfront => Bool

  A boolean value whether to include upfront costs in the cost budget.


=head2 UseAmortized => Bool

  A boolean value whether to include amortized costs in the cost budget.


=head2 UseBlended => Bool

  A boolean value whether to use blended costs in the cost budget.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Budgets>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

