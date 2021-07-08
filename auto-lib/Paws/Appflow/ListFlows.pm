
package Paws::Appflow::ListFlows;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListFlows');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/list-flows');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Appflow::ListFlowsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Appflow::ListFlows - Arguments for method ListFlows on L<Paws::Appflow>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListFlows on the
L<Amazon Appflow|Paws::Appflow> service. Use the attributes of this class
as arguments to method ListFlows.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListFlows.

=head1 SYNOPSIS

    my $appflow = Paws->service('Appflow');
    my $ListFlowsResponse = $appflow->ListFlows(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $Flows     = $ListFlowsResponse->Flows;
    my $NextToken = $ListFlowsResponse->NextToken;

    # Returns a L<Paws::Appflow::ListFlowsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appflow/ListFlows>

=head1 ATTRIBUTES


=head2 MaxResults => Int

Specifies the maximum number of items that should be returned in the
result set.



=head2 NextToken => Str

The pagination token for next page of data.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListFlows in L<Paws::Appflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

