
package Paws::DataExchange::ListRevisionAssets;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::DataExchange::Types qw//;
  has DataSetId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);
  has RevisionId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListRevisionAssets');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/v1/data-sets/{DataSetId}/revisions/{RevisionId}/assets');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::DataExchange::ListRevisionAssetsResponse');

    sub params_map {
    our $Params_map ||= {
  'ParamInURI' => {
                    'DataSetId' => 'DataSetId',
                    'RevisionId' => 'RevisionId'
                  },
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'MaxResults' => {
                                 'type' => 'Int'
                               },
               'DataSetId' => {
                                'type' => 'Str'
                              },
               'RevisionId' => {
                                 'type' => 'Str'
                               }
             },
  'IsRequired' => {
                    'DataSetId' => 1,
                    'RevisionId' => 1
                  },
  'ParamInQuery' => {
                      'NextToken' => 'nextToken',
                      'MaxResults' => 'maxResults'
                    }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::DataExchange::ListRevisionAssets - Arguments for method ListRevisionAssets on L<Paws::DataExchange>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListRevisionAssets on the
L<AWS Data Exchange|Paws::DataExchange> service. Use the attributes of this class
as arguments to method ListRevisionAssets.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListRevisionAssets.

=head1 SYNOPSIS

    my $dataexchange = Paws->service('DataExchange');
    my $ListRevisionAssetsResponse = $dataexchange->ListRevisionAssets(
      DataSetId  => 'My__string',
      RevisionId => 'My__string',
      MaxResults => 1,               # OPTIONAL
      NextToken  => 'My__string',    # OPTIONAL
    );

    # Results:
    my $Assets    = $ListRevisionAssetsResponse->Assets;
    my $NextToken = $ListRevisionAssetsResponse->NextToken;

    # Returns a L<Paws::DataExchange::ListRevisionAssetsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dataexchange/ListRevisionAssets>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DataSetId => Str

The unique identifier for a data set.



=head2 MaxResults => Int

The maximum number of results returned by a single call.



=head2 NextToken => Str

The token value retrieved from a previous call to access the next page
of results.



=head2 B<REQUIRED> RevisionId => Str

The unique identifier for a revision.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListRevisionAssets in L<Paws::DataExchange>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

