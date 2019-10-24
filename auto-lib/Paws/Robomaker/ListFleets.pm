
package Paws::Robomaker::ListFleets;
  use Moo;
  use Types::Standard qw/Str ArrayRef Int/;
  use Paws::Robomaker::Types qw/Robomaker_Filter/;
  has Filters => (is => 'ro', isa => ArrayRef[Robomaker_Filter], predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListFleets');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/listFleets');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Robomaker::ListFleetsResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Filters' => {
                              'class' => 'Paws::Robomaker::Filter',
                              'type' => 'ArrayRef[Robomaker_Filter]'
                            },
               'MaxResults' => {
                                 'type' => 'Int'
                               }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'Filters' => 'filters',
                       'MaxResults' => 'maxResults'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::ListFleets - Arguments for method ListFleets on L<Paws::Robomaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListFleets on the
L<AWS RoboMaker|Paws::Robomaker> service. Use the attributes of this class
as arguments to method ListFleets.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListFleets.

=head1 SYNOPSIS

    my $robomaker = Paws->service('Robomaker');
    my $ListFleetsResponse = $robomaker->ListFleets(
      Filters => [
        {
          Name   => 'MyName',    # min: 1, max: 255
          Values => [
            'MyName', ...        # min: 1, max: 255
          ],                     # min: 1, max: 1; OPTIONAL
        },
        ...
      ],                         # OPTIONAL
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $FleetDetails = $ListFleetsResponse->FleetDetails;
    my $NextToken    = $ListFleetsResponse->NextToken;

    # Returns a L<Paws::Robomaker::ListFleetsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/robomaker/ListFleets>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[Robomaker_Filter]

Optional filters to limit results.

The filter name C<name> is supported. When filtering, you must use the
complete value of the filtered item. You can use up to three filters.



=head2 MaxResults => Int

The maximum number of deployment job results returned by C<ListFleets>
in paginated output. When this parameter is used, C<ListFleets> only
returns C<maxResults> results in a single page along with a
C<nextToken> response element. The remaining results of the initial
request can be seen by sending another C<ListFleets> request with the
returned C<nextToken> value. This value can be between 1 and 100. If
this parameter is not used, then C<ListFleets> returns up to 100
results and a C<nextToken> value if applicable.



=head2 NextToken => Str

The C<nextToken> value returned from a previous paginated C<ListFleets>
request where C<maxResults> was used and the results exceeded the value
of that parameter. Pagination continues from the end of the previous
results that returned the C<nextToken> value.

This token should be treated as an opaque identifier that is only used
to retrieve the next items in a list and not for other programmatic
purposes.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListFleets in L<Paws::Robomaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

