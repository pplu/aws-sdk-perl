
package Paws::OpsWorksCM::UpdateServerEngineAttributes;
  use Moose;
  has AttributeName => (is => 'ro', isa => 'Str', required => 1);
  has AttributeValue => (is => 'ro', isa => 'Str');
  has ServerName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateServerEngineAttributes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpsWorksCM::UpdateServerEngineAttributesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorksCM::UpdateServerEngineAttributes - Arguments for method UpdateServerEngineAttributes on L<Paws::OpsWorksCM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateServerEngineAttributes on the 
L<AWS OpsWorks for Chef Automate|Paws::OpsWorksCM> service. Use the attributes of this class
as arguments to method UpdateServerEngineAttributes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateServerEngineAttributes.

As an example:

  $service_obj->UpdateServerEngineAttributes(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AttributeName => Str

The name of the engine attribute to update.



=head2 AttributeValue => Str

The value to set for the attribute.



=head2 B<REQUIRED> ServerName => Str

The name of the server to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateServerEngineAttributes in L<Paws::OpsWorksCM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

