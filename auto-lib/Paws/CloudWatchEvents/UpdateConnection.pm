
package Paws::CloudWatchEvents::UpdateConnection;
  use Moose;
  has AuthorizationType => (is => 'ro', isa => 'Str');
  has AuthParameters => (is => 'ro', isa => 'Paws::CloudWatchEvents::UpdateConnectionAuthRequestParameters');
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateConnection');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchEvents::UpdateConnectionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::UpdateConnection - Arguments for method UpdateConnection on L<Paws::CloudWatchEvents>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateConnection on the
L<Amazon EventBridge|Paws::CloudWatchEvents> service. Use the attributes of this class
as arguments to method UpdateConnection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateConnection.

=head1 SYNOPSIS

    my $events = Paws->service('CloudWatchEvents');
    my $UpdateConnectionResponse = $events->UpdateConnection(
      Name           => 'MyConnectionName',
      AuthParameters => {
        ApiKeyAuthParameters => {
          ApiKeyName  => 'MyAuthHeaderParameters',  # min: 1, max: 512; OPTIONAL
          ApiKeyValue => 'MyAuthHeaderParameters',  # min: 1, max: 512; OPTIONAL
        },    # OPTIONAL
        BasicAuthParameters => {
          Password => 'MyAuthHeaderParameters',    # min: 1, max: 512; OPTIONAL
          Username => 'MyAuthHeaderParameters',    # min: 1, max: 512; OPTIONAL
        },    # OPTIONAL
        InvocationHttpParameters => {
          BodyParameters => [
            {
              IsValueSecret => 1,             # OPTIONAL
              Key           => 'MyString',    # OPTIONAL
              Value         => 'MyString',    # OPTIONAL
            },
            ...
          ],                                  # max: 100; OPTIONAL
          HeaderParameters => [
            {
              IsValueSecret => 1,                  # OPTIONAL
              Key           => 'MyHeaderKey',      # max: 512; OPTIONAL
              Value         => 'MyHeaderValue',    # max: 512; OPTIONAL
            },
            ...
          ],                                       # max: 100; OPTIONAL
          QueryStringParameters => [
            {
              IsValueSecret => 1,                       # OPTIONAL
              Key           => 'MyQueryStringKey',      # max: 512; OPTIONAL
              Value         => 'MyQueryStringValue',    # max: 512; OPTIONAL
            },
            ...
          ],                                            # max: 100; OPTIONAL
        },    # OPTIONAL
        OAuthParameters => {
          AuthorizationEndpoint =>
            'MyHttpsEndpoint',    # min: 1, max: 2048; OPTIONAL
          ClientParameters => {
            ClientID => 'MyAuthHeaderParameters',   # min: 1, max: 512; OPTIONAL
            ClientSecret =>
              'MyAuthHeaderParameters',             # min: 1, max: 512; OPTIONAL
          },    # OPTIONAL
          HttpMethod          => 'GET',    # values: GET, POST, PUT; OPTIONAL
          OAuthHttpParameters => {
            BodyParameters => [
              {
                IsValueSecret => 1,             # OPTIONAL
                Key           => 'MyString',    # OPTIONAL
                Value         => 'MyString',    # OPTIONAL
              },
              ...
            ],                                  # max: 100; OPTIONAL
            HeaderParameters => [
              {
                IsValueSecret => 1,                  # OPTIONAL
                Key           => 'MyHeaderKey',      # max: 512; OPTIONAL
                Value         => 'MyHeaderValue',    # max: 512; OPTIONAL
              },
              ...
            ],                                       # max: 100; OPTIONAL
            QueryStringParameters => [
              {
                IsValueSecret => 1,                       # OPTIONAL
                Key           => 'MyQueryStringKey',      # max: 512; OPTIONAL
                Value         => 'MyQueryStringValue',    # max: 512; OPTIONAL
              },
              ...
            ],                                            # max: 100; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      AuthorizationType => 'BASIC',                      # OPTIONAL
      Description       => 'MyConnectionDescription',    # OPTIONAL
    );

    # Results:
    my $ConnectionArn      = $UpdateConnectionResponse->ConnectionArn;
    my $ConnectionState    = $UpdateConnectionResponse->ConnectionState;
    my $CreationTime       = $UpdateConnectionResponse->CreationTime;
    my $LastAuthorizedTime = $UpdateConnectionResponse->LastAuthorizedTime;
    my $LastModifiedTime   = $UpdateConnectionResponse->LastModifiedTime;

    # Returns a L<Paws::CloudWatchEvents::UpdateConnectionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/events/UpdateConnection>

=head1 ATTRIBUTES


=head2 AuthorizationType => Str

The type of authorization to use for the connection.

Valid values are: C<"BASIC">, C<"OAUTH_CLIENT_CREDENTIALS">, C<"API_KEY">

=head2 AuthParameters => L<Paws::CloudWatchEvents::UpdateConnectionAuthRequestParameters>

The authorization parameters to use for the connection.



=head2 Description => Str

A description for the connection.



=head2 B<REQUIRED> Name => Str

The name of the connection to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateConnection in L<Paws::CloudWatchEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

