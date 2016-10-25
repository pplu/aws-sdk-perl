
package Paws::CognitoIdp::CreateUserPoolClient;
  use Moose;
  has ClientName => (is => 'ro', isa => 'Str', required => 1);
  has ExplicitAuthFlows => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has GenerateSecret => (is => 'ro', isa => 'Bool');
  has ReadAttributes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has RefreshTokenValidity => (is => 'ro', isa => 'Int');
  has UserPoolId => (is => 'ro', isa => 'Str', required => 1);
  has WriteAttributes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateUserPoolClient');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::CreateUserPoolClientResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::CreateUserPoolClient - Arguments for method CreateUserPoolClient on Paws::CognitoIdp

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateUserPoolClient on the 
Amazon Cognito Identity Provider service. Use the attributes of this class
as arguments to method CreateUserPoolClient.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateUserPoolClient.

As an example:

  $service_obj->CreateUserPoolClient(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientName => Str

The client name for the user pool client you would like to create.



=head2 ExplicitAuthFlows => ArrayRef[Str|Undef]

The explicit authentication flows.



=head2 GenerateSecret => Bool

Boolean to specify whether you want to generate a secret for the user
pool client being created.



=head2 ReadAttributes => ArrayRef[Str|Undef]

The read attributes.



=head2 RefreshTokenValidity => Int

Refreshes the token validity.



=head2 B<REQUIRED> UserPoolId => Str

The user pool ID for the user pool where you want to create a user pool
client.



=head2 WriteAttributes => ArrayRef[Str|Undef]

The write attributes.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateUserPoolClient in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

