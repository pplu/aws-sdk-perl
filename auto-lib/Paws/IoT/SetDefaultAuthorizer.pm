
package Paws::IoT::SetDefaultAuthorizer;
  use Moose;
  has AuthorizerName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'authorizerName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetDefaultAuthorizer');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/default-authorizer');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::SetDefaultAuthorizerResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::SetDefaultAuthorizer - Arguments for method SetDefaultAuthorizer on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SetDefaultAuthorizer on the 
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method SetDefaultAuthorizer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SetDefaultAuthorizer.

As an example:

  $service_obj->SetDefaultAuthorizer(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AuthorizerName => Str

The authorizer name.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SetDefaultAuthorizer in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

