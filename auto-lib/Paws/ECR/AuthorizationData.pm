package Paws::ECR::AuthorizationData;
  use Moose;
  has AuthorizationToken => (is => 'ro', isa => 'Str', request_name => 'authorizationToken', traits => ['NameInRequest']);
  has ExpiresAt => (is => 'ro', isa => 'Str', request_name => 'expiresAt', traits => ['NameInRequest']);
  has ProxyEndpoint => (is => 'ro', isa => 'Str', request_name => 'proxyEndpoint', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECR::AuthorizationData

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECR::AuthorizationData object:

  $service_obj->Method(Att1 => { AuthorizationToken => $value, ..., ProxyEndpoint => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECR::AuthorizationData object:

  $result = $service_obj->Method(...);
  $result->Att1->AuthorizationToken

=head1 DESCRIPTION

An object representing authorization data for an Amazon ECR registry.

=head1 ATTRIBUTES


=head2 AuthorizationToken => Str

  A base64-encoded string that contains authorization data for the
specified Amazon ECR registry. When the string is decoded, it is
presented in the format C<user:password> for private registry
authentication using C<docker login>.


=head2 ExpiresAt => Str

  The Unix time in seconds and milliseconds when the authorization token
expires. Authorization tokens are valid for 12 hours.


=head2 ProxyEndpoint => Str

  The registry URL to use for this authorization token in a C<docker
login> command. The Amazon ECR registry URL format is
C<https://aws_account_id.dkr.ecr.region.amazonaws.com>. For example,
C<https://012345678910.dkr.ecr.us-east-1.amazonaws.com>..



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

