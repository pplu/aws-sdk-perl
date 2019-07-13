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

The types of cost that are included in a C<COST> budget, such as tax
and subscriptions.

C<USAGE>, C<RI_UTILIZATION>, and C<RI_COVERAGE> budgets do not have
C<CostTypes>.

=head1 ATTRIBUTES


=head2 IncludeCredit => Bool

  Specifies whether a budget includes credits.

The default value is C<true>.


=head2 IncludeDiscount => Bool

  Specifies whether a budget includes discounts.

The default value is C<true>.


=head2 IncludeOtherSubscription => Bool

  Specifies whether a budget includes non-RI subscription costs.

The default value is C<true>.


=head2 IncludeRecurring => Bool

  Specifies whether a budget includes recurring fees such as monthly RI
fees.

The default value is C<true>.


=head2 IncludeRefund => Bool

  Specifies whether a budget includes refunds.

The default value is C<true>.


=head2 IncludeSubscription => Bool

  Specifies whether a budget includes subscriptions.

The default value is C<true>.


=head2 IncludeSupport => Bool

  Specifies whether a budget includes support subscription fees.

The default value is C<true>.


=head2 IncludeTax => Bool

  Specifies whether a budget includes taxes.

The default value is C<true>.


=head2 IncludeUpfront => Bool

  Specifies whether a budget includes upfront RI costs.

The default value is C<true>.


=head2 UseAmortized => Bool

  Specifies whether a budget uses the amortized rate.

The default value is C<false>.


=head2 UseBlended => Bool

  Specifies whether a budget uses a blended rate.

The default value is C<false>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Budgets>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

