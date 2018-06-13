
package Paws::IoT::DeleteAuthorizer;
  use Moose;
  has AuthorizerName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'authorizerName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteAuthorizer');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/authorizer/{authorizerName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::DeleteAuthorizerResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DeleteAuthorizer - Arguments for method DeleteAuthorizer on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteAuthorizer on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method DeleteAuthorizer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteAuthorizer.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $DeleteAuthorizerResponse = $iot->DeleteAuthorizer(
      AuthorizerName => 'MyAuthorizerName',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/DeleteAuthorizer>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AuthorizerName => Str

The name of the authorizer to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteAuthorizer in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

