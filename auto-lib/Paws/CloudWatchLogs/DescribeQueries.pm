
package Paws::CloudWatchLogs::DescribeQueries;
  use Moose;
  has LogGroupName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'logGroupName' );
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeQueries');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchLogs::DescribeQueriesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::DescribeQueries - Arguments for method DescribeQueries on L<Paws::CloudWatchLogs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeQueries on the
L<Amazon CloudWatch Logs|Paws::CloudWatchLogs> service. Use the attributes of this class
as arguments to method DescribeQueries.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeQueries.

=head1 SYNOPSIS

    my $logs = Paws->service('CloudWatchLogs');
    my $DescribeQueriesResponse = $logs->DescribeQueries(
      LogGroupName => 'MyLogGroupName',    # OPTIONAL
      MaxResults   => 1,                   # OPTIONAL
      NextToken    => 'MyNextToken',       # OPTIONAL
      Status       => 'Scheduled',         # OPTIONAL
    );

    # Results:
    my $NextToken = $DescribeQueriesResponse->NextToken;
    my $Queries   = $DescribeQueriesResponse->Queries;

    # Returns a L<Paws::CloudWatchLogs::DescribeQueriesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/logs/DescribeQueries>

=head1 ATTRIBUTES


=head2 LogGroupName => Str

Limits the returned queries to only those for the specified log group.



=head2 MaxResults => Int

Limits the number of returned queries to the specified number.



=head2 NextToken => Str





=head2 Status => Str

Limits the returned queries to only those that have the specified
status. Valid values are C<Cancelled>, C<Complete>, C<Failed>,
C<Running>, and C<Scheduled>.

Valid values are: C<"Scheduled">, C<"Running">, C<"Complete">, C<"Failed">, C<"Cancelled">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeQueries in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

