package Paws::Budgets::CostTypes;
  use Moose;
  has IncludeSubscription => (is => 'ro', isa => 'Bool', required => 1);
  has IncludeTax => (is => 'ro', isa => 'Bool', required => 1);
  has UseBlended => (is => 'ro', isa => 'Bool', required => 1);
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

  $service_obj->Method(Att1 => { IncludeSubscription => $value, ..., UseBlended => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Budgets::CostTypes object:

  $result = $service_obj->Method(...);
  $result->Att1->IncludeSubscription

=head1 DESCRIPTION

This includes the options for getting the cost of a budget.

=head1 ATTRIBUTES


=head2 B<REQUIRED> IncludeSubscription => Bool

  


=head2 B<REQUIRED> IncludeTax => Bool

  


=head2 B<REQUIRED> UseBlended => Bool

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Budgets>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

