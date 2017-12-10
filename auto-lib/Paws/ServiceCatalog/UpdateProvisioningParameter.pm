package Paws::ServiceCatalog::UpdateProvisioningParameter;
  use Moose;
  has Key => (is => 'ro', isa => 'Str');
  has UsePreviousValue => (is => 'ro', isa => 'Bool');
  has Value => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::UpdateProvisioningParameter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServiceCatalog::UpdateProvisioningParameter object:

  $service_obj->Method(Att1 => { Key => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServiceCatalog::UpdateProvisioningParameter object:

  $result = $service_obj->Method(...);
  $result->Att1->Key

=head1 DESCRIPTION

The parameter key-value pair used to update a provisioned product.

=head1 ATTRIBUTES


=head2 Key => Str

  The parameter key.


=head2 UsePreviousValue => Bool

  If set to true, C<Value> is ignored and the previous parameter value is
kept.


=head2 Value => Str

  The parameter value.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

