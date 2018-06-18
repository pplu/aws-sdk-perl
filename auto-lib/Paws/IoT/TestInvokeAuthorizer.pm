
package Paws::IoT::TestInvokeAuthorizer;
  use Moose;
  has AuthorizerName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'authorizerName', required => 1);
  has Token => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'token', required => 1);
  has TokenSignature => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'tokenSignature', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TestInvokeAuthorizer');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/authorizer/{authorizerName}/test');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::TestInvokeAuthorizerResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::TestInvokeAuthorizer - Arguments for method TestInvokeAuthorizer on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TestInvokeAuthorizer on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method TestInvokeAuthorizer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TestInvokeAuthorizer.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $TestInvokeAuthorizerResponse = $iot->TestInvokeAuthorizer(
      AuthorizerName => 'MyAuthorizerName',
      Token          => 'MyToken',
      TokenSignature => 'MyTokenSignature',

    );

    # Results:
    my $DisconnectAfterInSeconds =
      $TestInvokeAuthorizerResponse->DisconnectAfterInSeconds;
    my $IsAuthenticated = $TestInvokeAuthorizerResponse->IsAuthenticated;
    my $PolicyDocuments = $TestInvokeAuthorizerResponse->PolicyDocuments;
    my $PrincipalId     = $TestInvokeAuthorizerResponse->PrincipalId;
    my $RefreshAfterInSeconds =
      $TestInvokeAuthorizerResponse->RefreshAfterInSeconds;

    # Returns a L<Paws::IoT::TestInvokeAuthorizerResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/TestInvokeAuthorizer>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AuthorizerName => Str

The custom authorizer name.



=head2 B<REQUIRED> Token => Str

The token returned by your custom authentication service.



=head2 B<REQUIRED> TokenSignature => Str

The signature made with the token and your custom authentication
service's private key.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TestInvokeAuthorizer in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

