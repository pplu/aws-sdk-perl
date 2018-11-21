package Paws::AppSync::OpenIDConnectConfig;
  use Moose;
  has AuthTTL => (is => 'ro', isa => 'Int', request_name => 'authTTL', traits => ['NameInRequest']);
  has ClientId => (is => 'ro', isa => 'Str', request_name => 'clientId', traits => ['NameInRequest']);
  has IatTTL => (is => 'ro', isa => 'Int', request_name => 'iatTTL', traits => ['NameInRequest']);
  has Issuer => (is => 'ro', isa => 'Str', request_name => 'issuer', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::OpenIDConnectConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppSync::OpenIDConnectConfig object:

  $service_obj->Method(Att1 => { AuthTTL => $value, ..., Issuer => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppSync::OpenIDConnectConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->AuthTTL

=head1 DESCRIPTION

Describes an OpenID Connect configuration.

=head1 ATTRIBUTES


=head2 AuthTTL => Int

  The number of milliseconds a token is valid after being authenticated.


=head2 ClientId => Str

  The client identifier of the Relying party at the OpenID identity
provider. This identifier is typically obtained when the Relying party
is registered with the OpenID identity provider. You can specify a
regular expression so the AWS AppSync can validate against multiple
client identifiers at a time.


=head2 IatTTL => Int

  The number of milliseconds a token is valid after being issued to a
user.


=head2 B<REQUIRED> Issuer => Str

  The issuer for the OpenID Connect configuration. The issuer returned by
discovery must exactly match the value of C<iss> in the ID token.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

