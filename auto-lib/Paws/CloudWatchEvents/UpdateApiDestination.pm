
package Paws::CloudWatchEvents::UpdateApiDestination;
  use Moose;
  has ConnectionArn => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has HttpMethod => (is => 'ro', isa => 'Str');
  has InvocationEndpoint => (is => 'ro', isa => 'Str');
  has InvocationRateLimitPerSecond => (is => 'ro', isa => 'Int');
  has Name => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateApiDestination');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchEvents::UpdateApiDestinationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::UpdateApiDestination - Arguments for method UpdateApiDestination on L<Paws::CloudWatchEvents>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateApiDestination on the
L<Amazon EventBridge|Paws::CloudWatchEvents> service. Use the attributes of this class
as arguments to method UpdateApiDestination.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateApiDestination.

=head1 SYNOPSIS

    my $events = Paws->service('CloudWatchEvents');
    my $UpdateApiDestinationResponse = $events->UpdateApiDestination(
      Name                         => 'MyApiDestinationName',
      ConnectionArn                => 'MyConnectionArn',              # OPTIONAL
      Description                  => 'MyApiDestinationDescription',  # OPTIONAL
      HttpMethod                   => 'POST',                         # OPTIONAL
      InvocationEndpoint           => 'MyHttpsEndpoint',              # OPTIONAL
      InvocationRateLimitPerSecond => 1,                              # OPTIONAL
    );

    # Results:
    my $ApiDestinationArn = $UpdateApiDestinationResponse->ApiDestinationArn;
    my $ApiDestinationState =
      $UpdateApiDestinationResponse->ApiDestinationState;
    my $CreationTime     = $UpdateApiDestinationResponse->CreationTime;
    my $LastModifiedTime = $UpdateApiDestinationResponse->LastModifiedTime;

    # Returns a L<Paws::CloudWatchEvents::UpdateApiDestinationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/events/UpdateApiDestination>

=head1 ATTRIBUTES


=head2 ConnectionArn => Str

The ARN of the connection to use for the API destination.



=head2 Description => Str

The name of the API destination to update.



=head2 HttpMethod => Str

The method to use for the API destination.

Valid values are: C<"POST">, C<"GET">, C<"HEAD">, C<"OPTIONS">, C<"PUT">, C<"PATCH">, C<"DELETE">

=head2 InvocationEndpoint => Str

The URL to the endpoint to use for the API destination.



=head2 InvocationRateLimitPerSecond => Int

The maximum number of invocations per second to send to the API
destination.



=head2 B<REQUIRED> Name => Str

The name of the API destination to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateApiDestination in L<Paws::CloudWatchEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

