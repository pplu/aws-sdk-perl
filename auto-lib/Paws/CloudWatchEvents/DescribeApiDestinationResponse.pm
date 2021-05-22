
package Paws::CloudWatchEvents::DescribeApiDestinationResponse;
  use Moose;
  has ApiDestinationArn => (is => 'ro', isa => 'Str');
  has ApiDestinationState => (is => 'ro', isa => 'Str');
  has ConnectionArn => (is => 'ro', isa => 'Str');
  has CreationTime => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has HttpMethod => (is => 'ro', isa => 'Str');
  has InvocationEndpoint => (is => 'ro', isa => 'Str');
  has InvocationRateLimitPerSecond => (is => 'ro', isa => 'Int');
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::DescribeApiDestinationResponse

=head1 ATTRIBUTES


=head2 ApiDestinationArn => Str

The ARN of the API destination retrieved.


=head2 ApiDestinationState => Str

The state of the API destination retrieved.

Valid values are: C<"ACTIVE">, C<"INACTIVE">
=head2 ConnectionArn => Str

The ARN of the connection specified for the API destination retrieved.


=head2 CreationTime => Str

A time stamp for the time that the API destination was created.


=head2 Description => Str

The description for the API destination retrieved.


=head2 HttpMethod => Str

The method to use to connect to the HTTP endpoint.

Valid values are: C<"POST">, C<"GET">, C<"HEAD">, C<"OPTIONS">, C<"PUT">, C<"PATCH">, C<"DELETE">
=head2 InvocationEndpoint => Str

The URL to use to connect to the HTTP endpoint.


=head2 InvocationRateLimitPerSecond => Int

The maximum number of invocations per second to specified for the API
destination. Note that if you set the invocation rate maximum to a
value lower the rate necessary to send all events received on to the
destination HTTP endpoint, some events may not be delivered within the
24-hour retry window. If you plan to set the rate lower than the rate
necessary to deliver all events, consider using a dead-letter queue to
catch events that are not delivered within 24 hours.


=head2 LastModifiedTime => Str

A time stamp for the time that the API destination was last modified.


=head2 Name => Str

The name of the API destination retrieved.


=head2 _request_id => Str


=cut

1;