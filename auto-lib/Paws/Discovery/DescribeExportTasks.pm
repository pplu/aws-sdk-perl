
package Paws::Discovery::DescribeExportTasks;
  use Moose;
  has ExportIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'exportIds' );
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::Discovery::ExportFilter]', traits => ['NameInRequest'], request_name => 'filters' );
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeExportTasks');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Discovery::DescribeExportTasksResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Discovery::DescribeExportTasks - Arguments for method DescribeExportTasks on L<Paws::Discovery>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeExportTasks on the
L<AWS Application Discovery Service|Paws::Discovery> service. Use the attributes of this class
as arguments to method DescribeExportTasks.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeExportTasks.

=head1 SYNOPSIS

    my $discovery = Paws->service('Discovery');
    my $DescribeExportTasksResponse = $discovery->DescribeExportTasks(
      ExportIds => [ 'MyConfigurationsExportId', ... ],    # OPTIONAL
      Filters   => [
        {
          Condition => 'MyCondition',
          Name      => 'MyFilterName',
          Values    => [ 'MyFilterValue', ... ],

        },
        ...
      ],                                                   # OPTIONAL
      MaxResults => 1,                                     # OPTIONAL
      NextToken  => 'MyNextToken',                         # OPTIONAL
    );

    # Results:
    my $ExportsInfo = $DescribeExportTasksResponse->ExportsInfo;
    my $NextToken   = $DescribeExportTasksResponse->NextToken;

    # Returns a L<Paws::Discovery::DescribeExportTasksResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/discovery/DescribeExportTasks>

=head1 ATTRIBUTES


=head2 ExportIds => ArrayRef[Str|Undef]

One or more unique identifiers used to query the status of an export
request.



=head2 Filters => ArrayRef[L<Paws::Discovery::ExportFilter>]

One or more filters.

=over

=item *

C<AgentId> - ID of the agent whose collected data will be exported

=back




=head2 MaxResults => Int

The maximum number of volume results returned by C<DescribeExportTasks>
in paginated output. When this parameter is used,
C<DescribeExportTasks> only returns C<maxResults> results in a single
page along with a C<nextToken> response element.



=head2 NextToken => Str

The C<nextToken> value returned from a previous paginated
C<DescribeExportTasks> request where C<maxResults> was used and the
results exceeded the value of that parameter. Pagination continues from
the end of the previous results that returned the C<nextToken> value.
This value is null when there are no more results to return.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeExportTasks in L<Paws::Discovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

