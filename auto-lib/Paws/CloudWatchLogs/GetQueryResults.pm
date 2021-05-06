
package Paws::CloudWatchLogs::GetQueryResults;
  use Moose;
  has QueryId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'queryId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetQueryResults');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchLogs::GetQueryResultsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::GetQueryResults - Arguments for method GetQueryResults on L<Paws::CloudWatchLogs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetQueryResults on the
L<Amazon CloudWatch Logs|Paws::CloudWatchLogs> service. Use the attributes of this class
as arguments to method GetQueryResults.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetQueryResults.

=head1 SYNOPSIS

    my $logs = Paws->service('CloudWatchLogs');
    my $GetQueryResultsResponse = $logs->GetQueryResults(
      QueryId => 'MyQueryId',

    );

    # Results:
    my $Results    = $GetQueryResultsResponse->Results;
    my $Statistics = $GetQueryResultsResponse->Statistics;
    my $Status     = $GetQueryResultsResponse->Status;

    # Returns a L<Paws::CloudWatchLogs::GetQueryResultsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/logs/GetQueryResults>

=head1 ATTRIBUTES


=head2 B<REQUIRED> QueryId => Str

The ID number of the query.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetQueryResults in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

