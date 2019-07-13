package Paws::Budgets::Spend;
  use Moose;
  has Amount => (is => 'ro', isa => 'Str', required => 1);
  has Unit => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Budgets::Spend

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Budgets::Spend object:

  $service_obj->Method(Att1 => { Amount => $value, ..., Unit => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Budgets::Spend object:

  $result = $service_obj->Method(...);
  $result->Att1->Amount

=head1 DESCRIPTION

The amount of cost or usage that is measured for a budget.

For example, a C<Spend> for C<3 GB> of S3 usage would have the
following parameters:

=over

=item *

An C<Amount> of C<3>

=item *

A C<unit> of C<GB>

=back


=head1 ATTRIBUTES


=head2 B<REQUIRED> Amount => Str

  The cost or usage amount that is associated with a budget forecast,
actual spend, or budget threshold.


=head2 B<REQUIRED> Unit => Str

  The unit of measurement that is used for the budget forecast, actual
spend, or budget threshold, such as dollars or GB.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Budgets>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

