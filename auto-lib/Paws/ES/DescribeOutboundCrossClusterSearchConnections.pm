
package Paws::ES::DescribeOutboundCrossClusterSearchConnections;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::ES::Filter]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeOutboundCrossClusterSearchConnections');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2015-01-01/es/ccs/outboundConnection/search');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ES::DescribeOutboundCrossClusterSearchConnectionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::DescribeOutboundCrossClusterSearchConnections - Arguments for method DescribeOutboundCrossClusterSearchConnections on L<Paws::ES>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeOutboundCrossClusterSearchConnections on the
L<Amazon Elasticsearch Service|Paws::ES> service. Use the attributes of this class
as arguments to method DescribeOutboundCrossClusterSearchConnections.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeOutboundCrossClusterSearchConnections.

=head1 SYNOPSIS

    my $es = Paws->service('ES');
    my $DescribeOutboundCrossClusterSearchConnectionsResponse =
      $es->DescribeOutboundCrossClusterSearchConnections(
      Filters => [
        {
          Name   => 'MyNonEmptyString',    # min: 1; OPTIONAL
          Values => [
            'MyNonEmptyString', ...        # min: 1; OPTIONAL
          ],    # min: 1; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
      );

    # Results:
    my $CrossClusterSearchConnections =
      $DescribeOutboundCrossClusterSearchConnectionsResponse
      ->CrossClusterSearchConnections;
    my $NextToken =
      $DescribeOutboundCrossClusterSearchConnectionsResponse->NextToken;

# Returns a L<Paws::ES::DescribeOutboundCrossClusterSearchConnectionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/es/DescribeOutboundCrossClusterSearchConnections>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::ES::Filter>]

A list of filters used to match properties for outbound cross-cluster
search connection. Available C<Filter> names for this operation are:

=over

=item * cross-cluster-search-connection-id

=item * destination-domain-info.domain-name

=item * destination-domain-info.owner-id

=item * destination-domain-info.region

=item * source-domain-info.domain-name

=back




=head2 MaxResults => Int

Set this value to limit the number of results returned. If not
specified, defaults to 100.



=head2 NextToken => Str

NextToken is sent in case the earlier API call results contain the
NextToken. It is used for pagination.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeOutboundCrossClusterSearchConnections in L<Paws::ES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

