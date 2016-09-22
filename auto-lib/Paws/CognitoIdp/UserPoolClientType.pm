package Paws::CognitoIdp::UserPoolClientType;
  use Moose;
  has ClientId => (is => 'ro', isa => 'Str');
  has ClientName => (is => 'ro', isa => 'Str');
  has ClientSecret => (is => 'ro', isa => 'Str');
  has CreationDate => (is => 'ro', isa => 'Str');
  has ExplicitAuthFlows => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has LastModifiedDate => (is => 'ro', isa => 'Str');
  has ReadAttributes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has RefreshTokenValidity => (is => 'ro', isa => 'Int');
  has UserPoolId => (is => 'ro', isa => 'Str');
  has WriteAttributes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::UserPoolClientType

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CognitoIdp::UserPoolClientType object:

  $service_obj->Method(Att1 => { ClientId => $value, ..., WriteAttributes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CognitoIdp::UserPoolClientType object:

  $result = $service_obj->Method(...);
  $result->Att1->ClientId

=head1 DESCRIPTION

A user pool of the client type.

=head1 ATTRIBUTES


=head2 ClientId => Str

  The ID of the client associated with the user pool.


=head2 ClientName => Str

  The client name from the user pool request of the client type.


=head2 ClientSecret => Str

  The client secret from the user pool request of the client type.


=head2 CreationDate => Str

  The creation date from the user pool request of the client type.


=head2 ExplicitAuthFlows => ArrayRef[Str|Undef]

  The explicit authentication flows.


=head2 LastModifiedDate => Str

  The last modified date from the user pool request of the client type.


=head2 ReadAttributes => ArrayRef[Str|Undef]

  The Read-only attributes.


=head2 RefreshTokenValidity => Int

  The validity of the refresh token.


=head2 UserPoolId => Str

  The user pool ID for the user pool client.


=head2 WriteAttributes => ArrayRef[Str|Undef]

  The writeable attributes.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

