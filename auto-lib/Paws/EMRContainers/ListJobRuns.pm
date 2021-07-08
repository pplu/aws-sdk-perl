
package Paws::EMRContainers::ListJobRuns;
  use Moose;
  has CreatedAfter => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'createdAfter');
  has CreatedBefore => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'createdBefore');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'name');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has States => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'states');
  has VirtualClusterId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'virtualClusterId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListJobRuns');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/virtualclusters/{virtualClusterId}/jobruns');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EMRContainers::ListJobRunsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMRContainers::ListJobRuns - Arguments for method ListJobRuns on L<Paws::EMRContainers>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListJobRuns on the
L<Amazon EMR Containers|Paws::EMRContainers> service. Use the attributes of this class
as arguments to method ListJobRuns.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListJobRuns.

=head1 SYNOPSIS

    my $emr-containers = Paws->service('EMRContainers');
    my $ListJobRunsResponse = $emr -containers->ListJobRuns(
      VirtualClusterId => 'MyResourceIdString',
      CreatedAfter     => '1970-01-01T01:00:00',     # OPTIONAL
      CreatedBefore    => '1970-01-01T01:00:00',     # OPTIONAL
      MaxResults       => 1,                         # OPTIONAL
      Name             => 'MyResourceNameString',    # OPTIONAL
      NextToken        => 'MyNextToken',             # OPTIONAL
      States           => [
        'PENDING',
        ... # values: PENDING, SUBMITTED, RUNNING, FAILED, CANCELLED, CANCEL_PENDING, COMPLETED
      ],    # OPTIONAL
    );

    # Results:
    my $JobRuns   = $ListJobRunsResponse->JobRuns;
    my $NextToken = $ListJobRunsResponse->NextToken;

    # Returns a L<Paws::EMRContainers::ListJobRunsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/emr-containers/ListJobRuns>

=head1 ATTRIBUTES


=head2 CreatedAfter => Str

The date and time after which the job runs were submitted.



=head2 CreatedBefore => Str

The date and time before which the job runs were submitted.



=head2 MaxResults => Int

The maximum number of job runs that can be listed.



=head2 Name => Str

The name of the job run.



=head2 NextToken => Str

The token for the next set of job runs to return.



=head2 States => ArrayRef[Str|Undef]

The states of the job run.



=head2 B<REQUIRED> VirtualClusterId => Str

The ID of the virtual cluster for which to list the job run.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListJobRuns in L<Paws::EMRContainers>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

