
package Paws::Snowball::CreateAddress;
  use Moose;
  has Address => (is => 'ro', isa => 'Paws::Snowball::Address', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAddress');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Snowball::CreateAddressResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Snowball::CreateAddress - Arguments for method CreateAddress on L<Paws::Snowball>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAddress on the 
Amazon Import/Export Snowball service. Use the attributes of this class
as arguments to method CreateAddress.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAddress.

As an example:

  $service_obj->CreateAddress(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Address => L<Paws::Snowball::Address>

The address that you want the Snowball shipped to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAddress in L<Paws::Snowball>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

