package Paws::CognitoIdp::UserPoolClientDescription;
  use Moose;
  has ClientId => (is => 'ro', isa => 'Str');
  has ClientName => (is => 'ro', isa => 'Str');
  has UserPoolId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::UserPoolClientDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CognitoIdp::UserPoolClientDescription object:

  $service_obj->Method(Att1 => { ClientId => $value, ..., UserPoolId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CognitoIdp::UserPoolClientDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->ClientId

=head1 DESCRIPTION

The description of the user pool client.

=head1 ATTRIBUTES


=head2 ClientId => Str

  The ID of the client associated with the user pool.


=head2 ClientName => Str

  The client name from the user pool client description.


=head2 UserPoolId => Str

  The user pool ID for the user pool where you want to describe the user
pool client.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

