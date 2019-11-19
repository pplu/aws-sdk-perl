
package Paws::CloudWatchEvents::ListPartnerEventSources;
  use Moose;
  has Limit => (is => 'ro', isa => 'Int');
  has NamePrefix => (is => 'ro', isa => 'Str', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListPartnerEventSources');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchEvents::ListPartnerEventSourcesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::ListPartnerEventSources - Arguments for method ListPartnerEventSources on L<Paws::CloudWatchEvents>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListPartnerEventSources on the
L<Amazon EventBridge|Paws::CloudWatchEvents> service. Use the attributes of this class
as arguments to method ListPartnerEventSources.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListPartnerEventSources.

=head1 SYNOPSIS

    my $events = Paws->service('CloudWatchEvents');
    my $ListPartnerEventSourcesResponse = $events->ListPartnerEventSources(
      NamePrefix => 'MyPartnerEventSourceNamePrefix',
      Limit      => 1,                                  # OPTIONAL
      NextToken  => 'MyNextToken',                      # OPTIONAL
    );

    # Results:
    my $NextToken = $ListPartnerEventSourcesResponse->NextToken;
    my $PartnerEventSources =
      $ListPartnerEventSourcesResponse->PartnerEventSources;

  # Returns a L<Paws::CloudWatchEvents::ListPartnerEventSourcesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/events/ListPartnerEventSources>

=head1 ATTRIBUTES


=head2 Limit => Int

pecifying this limits the number of results returned by this operation.
The operation also returns a C<NextToken> that you can use in a
subsequent operation to retrieve the next set of results.



=head2 B<REQUIRED> NamePrefix => Str

If you specify this, the results are limited to only those partner
event sources that start with the string you specify.



=head2 NextToken => Str

The token returned by a previous call to this operation. Specifying
this retrieves the next set of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListPartnerEventSources in L<Paws::CloudWatchEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

