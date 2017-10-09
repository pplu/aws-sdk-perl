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

A structure that represents either a cost spend or usage spend.
Contains an amount and a unit.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Amount => Str

  


=head2 B<REQUIRED> Unit => Str

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Budgets>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

