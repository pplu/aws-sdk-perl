
package Paws::CloudWatchEvents::ListEventSources;
  use Moose;
  has Limit => (is => 'ro', isa => 'Int');
  has NamePrefix => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListEventSources');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchEvents::ListEventSourcesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::ListEventSources - Arguments for method ListEventSources on L<Paws::CloudWatchEvents>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListEventSources on the
L<Amazon EventBridge|Paws::CloudWatchEvents> service. Use the attributes of this class
as arguments to method ListEventSources.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListEventSources.

=head1 SYNOPSIS

    my $events = Paws->service('CloudWatchEvents');
    my $ListEventSourcesResponse = $events->ListEventSources(
      Limit      => 1,                            # OPTIONAL
      NamePrefix => 'MyEventSourceNamePrefix',    # OPTIONAL
      NextToken  => 'MyNextToken',                # OPTIONAL
    );

    # Results:
    my $EventSources = $ListEventSourcesResponse->EventSources;
    my $NextToken    = $ListEventSourcesResponse->NextToken;

    # Returns a L<Paws::CloudWatchEvents::ListEventSourcesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/cloudwatch/>

=head1 ATTRIBUTES


=head2 Limit => Int

Specifying this limits the number of results returned by this
operation. The operation also returns a C<NextToken> that you can use
in a subsequent operation to retrieve the next set of results.



=head2 NamePrefix => Str

Specifying this limits the results to only those partner event sources
with names that start with the specified prefix.



=head2 NextToken => Str

The token returned by a previous call to retrieve the next set of
results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListEventSources in L<Paws::CloudWatchEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

