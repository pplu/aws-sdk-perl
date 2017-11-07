package Paws::CognitoIdp::UICustomizationType;
  use Moose;
  has ClientId => (is => 'ro', isa => 'Str');
  has CreationDate => (is => 'ro', isa => 'Str');
  has CSS => (is => 'ro', isa => 'Str');
  has CSSVersion => (is => 'ro', isa => 'Str');
  has ImageUrl => (is => 'ro', isa => 'Str');
  has LastModifiedDate => (is => 'ro', isa => 'Str');
  has UserPoolId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::UICustomizationType

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CognitoIdp::UICustomizationType object:

  $service_obj->Method(Att1 => { ClientId => $value, ..., UserPoolId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CognitoIdp::UICustomizationType object:

  $result = $service_obj->Method(...);
  $result->Att1->ClientId

=head1 DESCRIPTION

A container for the UI customization information for a user pool's
built-in app UI.

=head1 ATTRIBUTES


=head2 ClientId => Str

  The client ID for the client app.


=head2 CreationDate => Str

  The creation date for the UI customization.


=head2 CSS => Str

  The CSS values in the UI customization.


=head2 CSSVersion => Str

  The CSS version number.


=head2 ImageUrl => Str

  The logo image for the UI customization.


=head2 LastModifiedDate => Str

  The last-modified date for the UI customization.


=head2 UserPoolId => Str

  The user pool ID for the user pool.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

