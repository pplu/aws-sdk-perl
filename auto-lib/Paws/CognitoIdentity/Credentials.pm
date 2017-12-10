package Paws::CognitoIdentity::Credentials;
  use Moose;
  has AccessKeyId => (is => 'ro', isa => 'Str');
  has Expiration => (is => 'ro', isa => 'Str');
  has SecretKey => (is => 'ro', isa => 'Str');
  has SessionToken => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdentity::Credentials

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CognitoIdentity::Credentials object:

  $service_obj->Method(Att1 => { AccessKeyId => $value, ..., SessionToken => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CognitoIdentity::Credentials object:

  $result = $service_obj->Method(...);
  $result->Att1->AccessKeyId

=head1 DESCRIPTION

Credentials for the provided identity ID.

=head1 ATTRIBUTES


=head2 AccessKeyId => Str

  The Access Key portion of the credentials.


=head2 Expiration => Str

  The date at which these credentials will expire.


=head2 SecretKey => Str

  The Secret Access Key portion of the credentials


=head2 SessionToken => Str

  The Session Token portion of the credentials



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CognitoIdentity>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

