
package Paws::MediaConnect::ListFlows;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListFlows');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/flows');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaConnect::ListFlowsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::ListFlows - Arguments for method ListFlows on L<Paws::MediaConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListFlows on the
L<AWS MediaConnect|Paws::MediaConnect> service. Use the attributes of this class
as arguments to method ListFlows.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListFlows.

=head1 SYNOPSIS

    my $mediaconnect = Paws->service('MediaConnect');
    my $ListFlowsResponse = $mediaconnect->ListFlows(
      MaxResults => 1,               # OPTIONAL
      NextToken  => 'My__string',    # OPTIONAL
    );

    # Results:
    my $Flows     = $ListFlowsResponse->Flows;
    my $NextToken = $ListFlowsResponse->NextToken;

    # Returns a L<Paws::MediaConnect::ListFlowsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediaconnect/ListFlows>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return per API request. For example,
you submit a ListFlows request with MaxResults set at 5. Although 20
items match your request, the service returns no more than the first 5
items. (The service also returns a NextToken value that you can use to
fetch the next batch of results.) The service might return fewer
results than the MaxResults value. If MaxResults is not included in the
request, the service defaults to pagination with a maximum of 10
results per page.



=head2 NextToken => Str

The token that identifies which batch of results that you want to see.
For example, you submit a ListFlows request with MaxResults set at 5.
The service returns the first batch of results (up to 5) and a
NextToken value. To see the next batch of results, you can submit the
ListFlows request a second time and specify the NextToken value.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListFlows in L<Paws::MediaConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

