package Paws::Budgets::CalculatedSpend;
  use Moose;
  has ActualSpend => (is => 'ro', isa => 'Paws::Budgets::Spend', required => 1);
  has ForecastedSpend => (is => 'ro', isa => 'Paws::Budgets::Spend');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Budgets::CalculatedSpend

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Budgets::CalculatedSpend object:

  $service_obj->Method(Att1 => { ActualSpend => $value, ..., ForecastedSpend => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Budgets::CalculatedSpend object:

  $result = $service_obj->Method(...);
  $result->Att1->ActualSpend

=head1 DESCRIPTION

The spend objects that are associated with this budget. The
C<actualSpend> tracks how much you've used, cost, usage, or RI units,
and the C<forecastedSpend> tracks how much you are predicted to spend
if your current usage remains steady.

For example, if it is the 20th of the month and you have spent C<50>
dollars on Amazon EC2, your C<actualSpend> is C<50 USD>, and your
C<forecastedSpend> is C<75 USD>.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActualSpend => L<Paws::Budgets::Spend>

  The amount of cost, usage, or RI units that you have used.


=head2 ForecastedSpend => L<Paws::Budgets::Spend>

  The amount of cost, usage, or RI units that you are forecasted to use.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Budgets>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

