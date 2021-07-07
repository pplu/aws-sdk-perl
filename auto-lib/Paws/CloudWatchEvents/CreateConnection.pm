
package Paws::CloudWatchEvents::CreateConnection;
  use Moose;
  has AuthorizationType => (is => 'ro', isa => 'Str', required => 1);
  has AuthParameters => (is => 'ro', isa => 'Paws::CloudWatchEvents::CreateConnectionAuthRequestParameters', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateConnection');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchEvents::CreateConnectionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::CreateConnection - Arguments for method CreateConnection on L<Paws::CloudWatchEvents>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateConnection on the
L<Amazon EventBridge|Paws::CloudWatchEvents> service. Use the attributes of this class
as arguments to method CreateConnection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateConnection.

=head1 SYNOPSIS

    my $events = Paws->service('CloudWatchEvents');
    my $CreateConnectionResponse = $events->CreateConnection(
      AuthParameters => {
        ApiKeyAuthParameters => {
          ApiKeyName  => 'MyAuthHeaderParameters',    # min: 1, max: 512
          ApiKeyValue => 'MyAuthHeaderParameters',    # min: 1, max: 512

        },    # OPTIONAL
        BasicAuthParameters => {
          Password => 'MyAuthHeaderParameters',    # min: 1, max: 512
          Username => 'MyAuthHeaderParameters',    # min: 1, max: 512

        },    # OPTIONAL
        InvocationHttpParameters => {
          BodyParameters => [
            {
              IsValueSecret => 1,             # OPTIONAL
              Key           => 'MyString',    # OPTIONAL
              Value         => 'MyString',    # OPTIONAL
            },
            ...
          ],    # max: 100; OPTIONAL
          HeaderParameters => [
            {
              IsValueSecret => 1,                  # OPTIONAL
              Key           => 'MyHeaderKey',      # max: 512; OPTIONAL
              Value         => 'MyHeaderValue',    # max: 512; OPTIONAL
            },
            ...
          ],    # max: 100; OPTIONAL
          QueryStringParameters => [
            {
              IsValueSecret => 1,                       # OPTIONAL
              Key           => 'MyQueryStringKey',      # max: 512; OPTIONAL
              Value         => 'MyQueryStringValue',    # max: 512; OPTIONAL
            },
            ...
          ],    # max: 100; OPTIONAL
        },    # OPTIONAL
        OAuthParameters => {
          AuthorizationEndpoint => 'MyHttpsEndpoint',    # min: 1, max: 2048
          ClientParameters      => {
            ClientID     => 'MyAuthHeaderParameters',    # min: 1, max: 512
            ClientSecret => 'MyAuthHeaderParameters',    # min: 1, max: 512

          },
          HttpMethod          => 'GET',    # values: GET, POST, PUT
          OAuthHttpParameters => {
            BodyParameters => [
              {
                IsValueSecret => 1,             # OPTIONAL
                Key           => 'MyString',    # OPTIONAL
                Value         => 'MyString',    # OPTIONAL
              },
              ...
            ],    # max: 100; OPTIONAL
            HeaderParameters => [
              {
                IsValueSecret => 1,                  # OPTIONAL
                Key           => 'MyHeaderKey',      # max: 512; OPTIONAL
                Value         => 'MyHeaderValue',    # max: 512; OPTIONAL
              },
              ...
            ],    # max: 100; OPTIONAL
            QueryStringParameters => [
              {
                IsValueSecret => 1,                       # OPTIONAL
                Key           => 'MyQueryStringKey',      # max: 512; OPTIONAL
                Value         => 'MyQueryStringValue',    # max: 512; OPTIONAL
              },
              ...
            ],    # max: 100; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
      },
      AuthorizationType => 'BASIC',
      Name              => 'MyConnectionName',
      Description       => 'MyConnectionDescription',    # OPTIONAL
    );

    # Results:
    my $ConnectionArn    = $CreateConnectionResponse->ConnectionArn;
    my $ConnectionState  = $CreateConnectionResponse->ConnectionState;
    my $CreationTime     = $CreateConnectionResponse->CreationTime;
    my $LastModifiedTime = $CreateConnectionResponse->LastModifiedTime;

    # Returns a L<Paws::CloudWatchEvents::CreateConnectionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/events/CreateConnection>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AuthorizationType => Str

The type of authorization to use for the connection.

Valid values are: C<"BASIC">, C<"OAUTH_CLIENT_CREDENTIALS">, C<"API_KEY">

=head2 B<REQUIRED> AuthParameters => L<Paws::CloudWatchEvents::CreateConnectionAuthRequestParameters>

A C<CreateConnectionAuthRequestParameters> object that contains the
authorization parameters to use to authorize with the endpoint.



=head2 Description => Str

A description for the connection to create.



=head2 B<REQUIRED> Name => Str

The name for the connection to create.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateConnection in L<Paws::CloudWatchEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

