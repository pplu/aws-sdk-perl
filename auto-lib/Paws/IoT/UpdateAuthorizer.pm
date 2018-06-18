
package Paws::IoT::UpdateAuthorizer;
  use Moose;
  has AuthorizerFunctionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'authorizerFunctionArn');
  has AuthorizerName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'authorizerName', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has TokenKeyName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'tokenKeyName');
  has TokenSigningPublicKeys => (is => 'ro', isa => 'Paws::IoT::PublicKeyMap', traits => ['NameInRequest'], request_name => 'tokenSigningPublicKeys');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAuthorizer');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/authorizer/{authorizerName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::UpdateAuthorizerResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::UpdateAuthorizer - Arguments for method UpdateAuthorizer on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateAuthorizer on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method UpdateAuthorizer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateAuthorizer.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $UpdateAuthorizerResponse = $iot->UpdateAuthorizer(
      AuthorizerName         => 'MyAuthorizerName',
      AuthorizerFunctionArn  => 'MyAuthorizerFunctionArn',    # OPTIONAL
      Status                 => 'ACTIVE',                     # OPTIONAL
      TokenKeyName           => 'MyTokenKeyName',             # OPTIONAL
      TokenSigningPublicKeys => {
        'MyKeyName' => 'MyKeyValue',   # key: min: 1, max: 128, value: max: 5120
      },    # OPTIONAL
    );

    # Results:
    my $AuthorizerArn  = $UpdateAuthorizerResponse->AuthorizerArn;
    my $AuthorizerName = $UpdateAuthorizerResponse->AuthorizerName;

    # Returns a L<Paws::IoT::UpdateAuthorizerResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/UpdateAuthorizer>

=head1 ATTRIBUTES


=head2 AuthorizerFunctionArn => Str

The ARN of the authorizer's Lambda function.



=head2 B<REQUIRED> AuthorizerName => Str

The authorizer name.



=head2 Status => Str

The status of the update authorizer request.

Valid values are: C<"ACTIVE">, C<"INACTIVE">

=head2 TokenKeyName => Str

The key used to extract the token from the HTTP headers.



=head2 TokenSigningPublicKeys => L<Paws::IoT::PublicKeyMap>

The public keys used to verify the token signature.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateAuthorizer in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

