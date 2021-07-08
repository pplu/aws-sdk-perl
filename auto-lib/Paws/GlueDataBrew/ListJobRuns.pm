
package Paws::GlueDataBrew::ListJobRuns;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListJobRuns');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/jobs/{name}/jobRuns');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GlueDataBrew::ListJobRunsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GlueDataBrew::ListJobRuns - Arguments for method ListJobRuns on L<Paws::GlueDataBrew>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListJobRuns on the
L<AWS Glue DataBrew|Paws::GlueDataBrew> service. Use the attributes of this class
as arguments to method ListJobRuns.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListJobRuns.

=head1 SYNOPSIS

    my $databrew = Paws->service('GlueDataBrew');
    my $ListJobRunsResponse = $databrew->ListJobRuns(
      Name       => 'MyJobName',
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $JobRuns   = $ListJobRunsResponse->JobRuns;
    my $NextToken = $ListJobRunsResponse->NextToken;

    # Returns a L<Paws::GlueDataBrew::ListJobRunsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/databrew/ListJobRuns>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return in this request.



=head2 B<REQUIRED> Name => Str

The name of the job.



=head2 NextToken => Str

The token returned by a previous call to retrieve the next set of
results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListJobRuns in L<Paws::GlueDataBrew>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

