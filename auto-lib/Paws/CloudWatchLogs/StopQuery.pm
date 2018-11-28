
package Paws::CloudWatchLogs::StopQuery;
  use Moose;
  has QueryId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'queryId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StopQuery');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchLogs::StopQueryResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::StopQuery - Arguments for method StopQuery on L<Paws::CloudWatchLogs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StopQuery on the
L<Amazon CloudWatch Logs|Paws::CloudWatchLogs> service. Use the attributes of this class
as arguments to method StopQuery.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StopQuery.

=head1 SYNOPSIS

    my $logs = Paws->service('CloudWatchLogs');
    my $StopQueryResponse = $logs->StopQuery(
      QueryId => 'MyQueryId',

    );

    # Results:
    my $Success = $StopQueryResponse->Success;

    # Returns a L<Paws::CloudWatchLogs::StopQueryResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/logs/StopQuery>

=head1 ATTRIBUTES


=head2 B<REQUIRED> QueryId => Str

The ID number of the query to stop. If necessary, you can use
C<DescribeQueries> to find this ID number.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StopQuery in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

