package Paws::CognitoIdentity::IdentityPoolShortDescription;
  use Moose;
  has IdentityPoolId => (is => 'ro', isa => 'Str');
  has IdentityPoolName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdentity::IdentityPoolShortDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CognitoIdentity::IdentityPoolShortDescription object:

  $service_obj->Method(Att1 => { IdentityPoolId => $value, ..., IdentityPoolName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CognitoIdentity::IdentityPoolShortDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->IdentityPoolId

=head1 DESCRIPTION

A description of the identity pool.

=head1 ATTRIBUTES


=head2 IdentityPoolId => Str

  An identity pool ID in the format REGION:GUID.


=head2 IdentityPoolName => Str

  A string that you provide.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CognitoIdentity>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

