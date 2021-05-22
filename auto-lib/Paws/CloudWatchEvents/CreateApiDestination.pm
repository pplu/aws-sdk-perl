
package Paws::CloudWatchEvents::CreateApiDestination;
  use Moose;
  has ConnectionArn => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has HttpMethod => (is => 'ro', isa => 'Str', required => 1);
  has InvocationEndpoint => (is => 'ro', isa => 'Str', required => 1);
  has InvocationRateLimitPerSecond => (is => 'ro', isa => 'Int');
  has Name => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateApiDestination');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchEvents::CreateApiDestinationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::CreateApiDestination - Arguments for method CreateApiDestination on L<Paws::CloudWatchEvents>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateApiDestination on the
L<Amazon EventBridge|Paws::CloudWatchEvents> service. Use the attributes of this class
as arguments to method CreateApiDestination.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateApiDestination.

=head1 SYNOPSIS

    my $events = Paws->service('CloudWatchEvents');
    my $CreateApiDestinationResponse = $events->CreateApiDestination(
      ConnectionArn                => 'MyConnectionArn',
      HttpMethod                   => 'POST',
      InvocationEndpoint           => 'MyHttpsEndpoint',
      Name                         => 'MyApiDestinationName',
      Description                  => 'MyApiDestinationDescription',  # OPTIONAL
      InvocationRateLimitPerSecond => 1,                              # OPTIONAL
    );

    # Results:
    my $ApiDestinationArn = $CreateApiDestinationResponse->ApiDestinationArn;
    my $ApiDestinationState =
      $CreateApiDestinationResponse->ApiDestinationState;
    my $CreationTime     = $CreateApiDestinationResponse->CreationTime;
    my $LastModifiedTime = $CreateApiDestinationResponse->LastModifiedTime;

    # Returns a L<Paws::CloudWatchEvents::CreateApiDestinationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/events/CreateApiDestination>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConnectionArn => Str

The ARN of the connection to use for the API destination. The
destination endpoint must support the authorization type specified for
the connection.



=head2 Description => Str

A description for the API destination to create.



=head2 B<REQUIRED> HttpMethod => Str

The method to use for the request to the HTTP invocation endpoint.

Valid values are: C<"POST">, C<"GET">, C<"HEAD">, C<"OPTIONS">, C<"PUT">, C<"PATCH">, C<"DELETE">

=head2 B<REQUIRED> InvocationEndpoint => Str

The URL to the HTTP invocation endpoint for the API destination.



=head2 InvocationRateLimitPerSecond => Int

The maximum number of requests per second to send to the HTTP
invocation endpoint.



=head2 B<REQUIRED> Name => Str

The name for the API destination to create.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateApiDestination in L<Paws::CloudWatchEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

