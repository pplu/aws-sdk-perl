
package Paws::Kendra::ListDataSourceSyncJobs;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has IndexId => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has StartTimeFilter => (is => 'ro', isa => 'Paws::Kendra::TimeRange');
  has StatusFilter => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDataSourceSyncJobs');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Kendra::ListDataSourceSyncJobsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::ListDataSourceSyncJobs - Arguments for method ListDataSourceSyncJobs on L<Paws::Kendra>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDataSourceSyncJobs on the
L<AWSKendraFrontendService|Paws::Kendra> service. Use the attributes of this class
as arguments to method ListDataSourceSyncJobs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDataSourceSyncJobs.

=head1 SYNOPSIS

    my $kendra = Paws->service('Kendra');
    my $ListDataSourceSyncJobsResponse = $kendra->ListDataSourceSyncJobs(
      Id              => 'MyDataSourceId',
      IndexId         => 'MyIndexId',
      MaxResults      => 1,                  # OPTIONAL
      NextToken       => 'MyNextToken',      # OPTIONAL
      StartTimeFilter => {
        EndTime   => '1970-01-01T01:00:00',    # OPTIONAL
        StartTime => '1970-01-01T01:00:00',    # OPTIONAL
      },    # OPTIONAL
      StatusFilter => 'FAILED',    # OPTIONAL
    );

    # Results:
    my $History   = $ListDataSourceSyncJobsResponse->History;
    my $NextToken = $ListDataSourceSyncJobsResponse->NextToken;

    # Returns a L<Paws::Kendra::ListDataSourceSyncJobsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kendra/ListDataSourceSyncJobs>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The identifier of the data source.



=head2 B<REQUIRED> IndexId => Str

The identifier of the index that contains the data source.



=head2 MaxResults => Int

The maximum number of synchronization jobs to return in the response.
If there are fewer results in the list, this response contains only the
actual results.



=head2 NextToken => Str

If the result of the previous request to C<GetDataSourceSyncJobHistory>
was truncated, include the C<NextToken> to fetch the next set of jobs.



=head2 StartTimeFilter => L<Paws::Kendra::TimeRange>

When specified, the synchronization jobs returned in the list are
limited to jobs between the specified dates.



=head2 StatusFilter => Str

When specified, only returns synchronization jobs with the C<Status>
field equal to the specified status.

Valid values are: C<"FAILED">, C<"SUCCEEDED">, C<"SYNCING">, C<"INCOMPLETE">, C<"STOPPING">, C<"ABORTED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDataSourceSyncJobs in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

