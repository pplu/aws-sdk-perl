
package Paws::CloudWatchEvents::ListApiDestinations;
  use Moose;
  has ConnectionArn => (is => 'ro', isa => 'Str');
  has Limit => (is => 'ro', isa => 'Int');
  has NamePrefix => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListApiDestinations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchEvents::ListApiDestinationsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::ListApiDestinations - Arguments for method ListApiDestinations on L<Paws::CloudWatchEvents>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListApiDestinations on the
L<Amazon EventBridge|Paws::CloudWatchEvents> service. Use the attributes of this class
as arguments to method ListApiDestinations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListApiDestinations.

=head1 SYNOPSIS

    my $events = Paws->service('CloudWatchEvents');
    my $ListApiDestinationsResponse = $events->ListApiDestinations(
      ConnectionArn => 'MyConnectionArn',         # OPTIONAL
      Limit         => 1,                         # OPTIONAL
      NamePrefix    => 'MyApiDestinationName',    # OPTIONAL
      NextToken     => 'MyNextToken',             # OPTIONAL
    );

    # Results:
    my $ApiDestinations = $ListApiDestinationsResponse->ApiDestinations;
    my $NextToken       = $ListApiDestinationsResponse->NextToken;

    # Returns a L<Paws::CloudWatchEvents::ListApiDestinationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/events/ListApiDestinations>

=head1 ATTRIBUTES


=head2 ConnectionArn => Str

The ARN of the connection specified for the API destination.



=head2 Limit => Int

The maximum number of API destinations to include in the response.



=head2 NamePrefix => Str

A name prefix to filter results returned. Only API destinations with a
name that starts with the prefix are returned.



=head2 NextToken => Str

The token returned by a previous call to retrieve the next set of
results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListApiDestinations in L<Paws::CloudWatchEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

