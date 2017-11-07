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

A structure that holds the actual and forecasted spend for a budget.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActualSpend => L<Paws::Budgets::Spend>

  


=head2 ForecastedSpend => L<Paws::Budgets::Spend>

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Budgets>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

