
package Paws::CognitoIdp::UpdateUserPoolClient;
  use Moose;
  has ClientId => (is => 'ro', isa => 'Str', required => 1);
  has ClientName => (is => 'ro', isa => 'Str');
  has ExplicitAuthFlows => (is => 'ro', isa => 'ArrayRef[Str]');
  has ReadAttributes => (is => 'ro', isa => 'ArrayRef[Str]');
  has RefreshTokenValidity => (is => 'ro', isa => 'Int');
  has UserPoolId => (is => 'ro', isa => 'Str', required => 1);
  has WriteAttributes => (is => 'ro', isa => 'ArrayRef[Str]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateUserPoolClient');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::UpdateUserPoolClientResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::UpdateUserPoolClient - Arguments for method UpdateUserPoolClient on Paws::CognitoIdp

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateUserPoolClient on the 
Amazon Cognito Identity Provider service. Use the attributes of this class
as arguments to method UpdateUserPoolClient.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateUserPoolClient.

As an example:

  $service_obj->UpdateUserPoolClient(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientId => Str

The ID of the client associated with the user pool.



=head2 ClientName => Str

The client name from the update user pool client request.



=head2 ExplicitAuthFlows => ArrayRef[Str]

Explicit authentication flows.



=head2 ReadAttributes => ArrayRef[Str]

The read-only attributes of the user pool.



=head2 RefreshTokenValidity => Int

The validity of the refresh token.



=head2 B<REQUIRED> UserPoolId => Str

The user pool ID for the user pool where you want to update the user
pool client.



=head2 WriteAttributes => ArrayRef[Str]

The writeable attributes of the user pool.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateUserPoolClient in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

