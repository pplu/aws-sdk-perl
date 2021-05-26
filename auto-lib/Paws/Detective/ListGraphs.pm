
package Paws::Detective::ListGraphs;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListGraphs');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/graphs/list');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Detective::ListGraphsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Detective::ListGraphs - Arguments for method ListGraphs on L<Paws::Detective>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListGraphs on the
L<Amazon Detective|Paws::Detective> service. Use the attributes of this class
as arguments to method ListGraphs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListGraphs.

=head1 SYNOPSIS

    my $api.detective = Paws->service('Detective');
    my $ListGraphsResponse = $api . detective->ListGraphs(
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $GraphList = $ListGraphsResponse->GraphList;
    my $NextToken = $ListGraphsResponse->NextToken;

    # Returns a L<Paws::Detective::ListGraphsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.detective/ListGraphs>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of graphs to return at a time. The total must be
less than the overall limit on the number of results to return, which
is currently 200.



=head2 NextToken => Str

For requests to get the next page of results, the pagination token that
was returned with the previous set of results. The initial request does
not include a pagination token.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListGraphs in L<Paws::Detective>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

