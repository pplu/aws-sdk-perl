package Paws::ECS::CapacityProviderStrategyItem;
  use Moose;
  has Base => (is => 'ro', isa => 'Int', request_name => 'base', traits => ['NameInRequest']);
  has CapacityProvider => (is => 'ro', isa => 'Str', request_name => 'capacityProvider', traits => ['NameInRequest'], required => 1);
  has Weight => (is => 'ro', isa => 'Int', request_name => 'weight', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::CapacityProviderStrategyItem

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECS::CapacityProviderStrategyItem object:

  $service_obj->Method(Att1 => { Base => $value, ..., Weight => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECS::CapacityProviderStrategyItem object:

  $result = $service_obj->Method(...);
  $result->Att1->Base

=head1 DESCRIPTION

The details of a capacity provider strategy.

=head1 ATTRIBUTES


=head2 Base => Int

  The I<base> value designates how many tasks, at a minimum, to run on
the specified capacity provider. Only one capacity provider in a
capacity provider strategy can have a I<base> defined.


=head2 B<REQUIRED> CapacityProvider => Str

  The short name or full Amazon Resource Name (ARN) of the capacity
provider.


=head2 Weight => Int

  The I<weight> value designates the relative percentage of the total
number of tasks launched that should use the specified capacity
provider.

For example, if you have a strategy that contains two capacity
providers and both have a weight of C<1>, then when the C<base> is
satisfied, the tasks will be split evenly across the two capacity
providers. Using that same logic, if you specify a weight of C<1> for
I<capacityProviderA> and a weight of C<4> for I<capacityProviderB>,
then for every one task that is run using I<capacityProviderA>, four
tasks would use I<capacityProviderB>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

