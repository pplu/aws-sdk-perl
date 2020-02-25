package Paws::AppSync::GraphqlApi;
  use Moose;
  has AdditionalAuthenticationProviders => (is => 'ro', isa => 'ArrayRef[Paws::AppSync::AdditionalAuthenticationProvider]', request_name => 'additionalAuthenticationProviders', traits => ['NameInRequest']);
  has ApiId => (is => 'ro', isa => 'Str', request_name => 'apiId', traits => ['NameInRequest']);
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest']);
  has AuthenticationType => (is => 'ro', isa => 'Str', request_name => 'authenticationType', traits => ['NameInRequest']);
  has LogConfig => (is => 'ro', isa => 'Paws::AppSync::LogConfig', request_name => 'logConfig', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has OpenIDConnectConfig => (is => 'ro', isa => 'Paws::AppSync::OpenIDConnectConfig', request_name => 'openIDConnectConfig', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'Paws::AppSync::TagMap', request_name => 'tags', traits => ['NameInRequest']);
  has Uris => (is => 'ro', isa => 'Paws::AppSync::MapOfStringToString', request_name => 'uris', traits => ['NameInRequest']);
  has UserPoolConfig => (is => 'ro', isa => 'Paws::AppSync::UserPoolConfig', request_name => 'userPoolConfig', traits => ['NameInRequest']);
  has XrayEnabled => (is => 'ro', isa => 'Bool', request_name => 'xrayEnabled', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::GraphqlApi

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppSync::GraphqlApi object:

  $service_obj->Method(Att1 => { AdditionalAuthenticationProviders => $value, ..., XrayEnabled => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppSync::GraphqlApi object:

  $result = $service_obj->Method(...);
  $result->Att1->AdditionalAuthenticationProviders

=head1 DESCRIPTION

Describes a GraphQL API.

=head1 ATTRIBUTES


=head2 AdditionalAuthenticationProviders => ArrayRef[L<Paws::AppSync::AdditionalAuthenticationProvider>]

  A list of additional authentication providers for the C<GraphqlApi>
API.


=head2 ApiId => Str

  The API ID.


=head2 Arn => Str

  The ARN.


=head2 AuthenticationType => Str

  The authentication type.


=head2 LogConfig => L<Paws::AppSync::LogConfig>

  The Amazon CloudWatch Logs configuration.


=head2 Name => Str

  The API name.


=head2 OpenIDConnectConfig => L<Paws::AppSync::OpenIDConnectConfig>

  The OpenID Connect configuration.


=head2 Tags => L<Paws::AppSync::TagMap>

  The tags.


=head2 Uris => L<Paws::AppSync::MapOfStringToString>

  The URIs.


=head2 UserPoolConfig => L<Paws::AppSync::UserPoolConfig>

  The Amazon Cognito user pool configuration.


=head2 XrayEnabled => Bool

  A flag representing whether X-Ray tracing is enabled for this
C<GraphqlApi>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

