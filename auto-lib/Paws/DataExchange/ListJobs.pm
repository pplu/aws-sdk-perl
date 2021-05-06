
package Paws::DataExchange::ListJobs;
  use Moose;
  has DataSetId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'dataSetId');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has RevisionId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'revisionId');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListJobs');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/jobs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataExchange::ListJobsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataExchange::ListJobs - Arguments for method ListJobs on L<Paws::DataExchange>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListJobs on the
L<AWS Data Exchange|Paws::DataExchange> service. Use the attributes of this class
as arguments to method ListJobs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListJobs.

=head1 SYNOPSIS

    my $dataexchange = Paws->service('DataExchange');
    my $ListJobsResponse = $dataexchange->ListJobs(
      DataSetId  => 'My__string',    # OPTIONAL
      MaxResults => 1,               # OPTIONAL
      NextToken  => 'My__string',    # OPTIONAL
      RevisionId => 'My__string',    # OPTIONAL
    );

    # Results:
    my $Jobs      = $ListJobsResponse->Jobs;
    my $NextToken = $ListJobsResponse->NextToken;

    # Returns a L<Paws::DataExchange::ListJobsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dataexchange/ListJobs>

=head1 ATTRIBUTES


=head2 DataSetId => Str

The unique identifier for a data set.



=head2 MaxResults => Int

The maximum number of results returned by a single call.



=head2 NextToken => Str

The token value retrieved from a previous call to access the next page
of results.



=head2 RevisionId => Str

The unique identifier for a revision.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListJobs in L<Paws::DataExchange>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

