package Paws::CognitoIdp::ResourceServerType;
  use Moose;
  has Identifier => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Scopes => (is => 'ro', isa => 'ArrayRef[Paws::CognitoIdp::ResourceServerScopeType]');
  has UserPoolId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::ResourceServerType

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CognitoIdp::ResourceServerType object:

  $service_obj->Method(Att1 => { Identifier => $value, ..., UserPoolId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CognitoIdp::ResourceServerType object:

  $result = $service_obj->Method(...);
  $result->Att1->Identifier

=head1 DESCRIPTION

A container for information about a resource server for a user pool.

=head1 ATTRIBUTES


=head2 Identifier => Str

  The identifier for the resource server.


=head2 Name => Str

  The name of the resource server.


=head2 Scopes => ArrayRef[L<Paws::CognitoIdp::ResourceServerScopeType>]

  A list of scopes that are defined for the resource server.


=head2 UserPoolId => Str

  The user pool ID for the user pool that hosts the resource server.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

