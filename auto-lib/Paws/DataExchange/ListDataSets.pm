
package Paws::DataExchange::ListDataSets;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::DataExchange::Types qw//;
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);
  has Origin => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListDataSets');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/v1/data-sets');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::DataExchange::ListDataSetsResponse');

    sub params_map {
    our $Params_map ||= {
  'ParamInQuery' => {
                      'Origin' => 'origin',
                      'MaxResults' => 'maxResults',
                      'NextToken' => 'nextToken'
                    },
  'types' => {
               'Origin' => {
                             'type' => 'Str'
                           },
               'MaxResults' => {
                                 'type' => 'Int'
                               },
               'NextToken' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::DataExchange::ListDataSets - Arguments for method ListDataSets on L<Paws::DataExchange>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDataSets on the
L<AWS Data Exchange|Paws::DataExchange> service. Use the attributes of this class
as arguments to method ListDataSets.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDataSets.

=head1 SYNOPSIS

    my $dataexchange = Paws->service('DataExchange');
    my $ListDataSetsResponse = $dataexchange->ListDataSets(
      MaxResults => 1,               # OPTIONAL
      NextToken  => 'My__string',    # OPTIONAL
      Origin     => 'My__string',    # OPTIONAL
    );

    # Results:
    my $DataSets  = $ListDataSetsResponse->DataSets;
    my $NextToken = $ListDataSetsResponse->NextToken;

    # Returns a L<Paws::DataExchange::ListDataSetsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dataexchange/ListDataSets>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results returned by a single call.



=head2 NextToken => Str

The token value retrieved from a previous call to access the next page
of results.



=head2 Origin => Str

A property that defines the data set as OWNED by the account (for
providers) or ENTITLED to the account (for subscribers).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDataSets in L<Paws::DataExchange>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

