package Paws::Connect::Credentials;
  use Moose;
  has AccessToken => (is => 'ro', isa => 'Str');
  has AccessTokenExpiration => (is => 'ro', isa => 'Str');
  has RefreshToken => (is => 'ro', isa => 'Str');
  has RefreshTokenExpiration => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::Credentials

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Connect::Credentials object:

  $service_obj->Method(Att1 => { AccessToken => $value, ..., RefreshTokenExpiration => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Connect::Credentials object:

  $result = $service_obj->Method(...);
  $result->Att1->AccessToken

=head1 DESCRIPTION

The credentials to use for federation.

=head1 ATTRIBUTES


=head2 AccessToken => Str

  An access token generated for a federated user to access Amazon Connect


=head2 AccessTokenExpiration => Str

  A token generated with an expiration time for the session a user is
logged in to Amazon Connect


=head2 RefreshToken => Str

  Renews a token generated for a user to access the Amazon Connect
instance.


=head2 RefreshTokenExpiration => Str

  Renews the expiration timer for a generated token.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

