package Paws::CognitoIdentity::UnprocessedIdentityId;
  use Moose;
  has ErrorCode => (is => 'ro', isa => 'Str');
  has IdentityId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdentity::UnprocessedIdentityId

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CognitoIdentity::UnprocessedIdentityId object:

  $service_obj->Method(Att1 => { ErrorCode => $value, ..., IdentityId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CognitoIdentity::UnprocessedIdentityId object:

  $result = $service_obj->Method(...);
  $result->Att1->ErrorCode

=head1 DESCRIPTION

An array of UnprocessedIdentityId objects, each of which contains an
ErrorCode and IdentityId.

=head1 ATTRIBUTES


=head2 ErrorCode => Str

  The error code indicating the type of error that occurred.


=head2 IdentityId => Str

  A unique identifier in the format REGION:GUID.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CognitoIdentity>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

