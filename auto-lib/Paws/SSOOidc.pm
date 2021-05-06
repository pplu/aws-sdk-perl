package Paws::SSOOidc;
  use Moose;
  sub service { 'oidc' }
  sub signing_name { 'awsssooidc' }
  sub version { '2019-06-10' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateToken {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOOidc::CreateToken', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterClient {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOOidc::RegisterClient', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartDeviceAuthorization {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSOOidc::StartDeviceAuthorization', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/CreateToken RegisterClient StartDeviceAuthorization / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SSOOidc - Perl Interface to AWS AWS SSO OIDC

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('SSOOidc');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

AWS Single Sign-On (SSO) OpenID Connect (OIDC) is a web service that
enables a client (such as AWS CLI or a native application) to register
with AWS SSO. The service also enables the client to fetch the
userE<rsquo>s access token upon successful authentication and
authorization with AWS SSO. This service conforms with the OAuth 2.0
based implementation of the device authorization grant standard
(https://tools.ietf.org/html/rfc8628
(https://tools.ietf.org/html/rfc8628)).

For general information about AWS SSO, see What is AWS Single Sign-On?
(https://docs.aws.amazon.com/singlesignon/latest/userguide/what-is.html)
in the I<AWS SSO User Guide>.

This API reference guide describes the AWS SSO OIDC operations that you
can call programatically and includes detailed information on data
types and errors.

AWS provides SDKs that consist of libraries and sample code for various
programming languages and platforms such as Java, Ruby, .Net, iOS, and
Android. The SDKs provide a convenient way to create programmatic
access to AWS SSO and other AWS services. For more information about
the AWS SDKs, including how to download and install them, see Tools for
Amazon Web Services (http://aws.amazon.com/tools/).

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/oidc-2019-06-10>


=head1 METHODS

=head2 CreateToken

=over

=item ClientId => Str

=item ClientSecret => Str

=item DeviceCode => Str

=item GrantType => Str

=item [Code => Str]

=item [RedirectUri => Str]

=item [RefreshToken => Str]

=item [Scope => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::SSOOidc::CreateToken>

Returns: a L<Paws::SSOOidc::CreateTokenResponse> instance

Creates and returns an access token for the authorized client. The
access token issued will be used to fetch short-term credentials for
the assigned roles in the AWS account.


=head2 RegisterClient

=over

=item ClientName => Str

=item ClientType => Str

=item [Scopes => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::SSOOidc::RegisterClient>

Returns: a L<Paws::SSOOidc::RegisterClientResponse> instance

Registers a client with AWS SSO. This allows clients to initiate device
authorization. The output should be persisted for reuse through many
authentication requests.


=head2 StartDeviceAuthorization

=over

=item ClientId => Str

=item ClientSecret => Str

=item StartUrl => Str


=back

Each argument is described in detail in: L<Paws::SSOOidc::StartDeviceAuthorization>

Returns: a L<Paws::SSOOidc::StartDeviceAuthorizationResponse> instance

Initiates device authorization by requesting a pair of verification
codes from the authorization service.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

