
package Paws::CloudWatchLogs::GetLogRecord;
  use Moose;
  has LogRecordPointer => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'logRecordPointer' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetLogRecord');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchLogs::GetLogRecordResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::GetLogRecord - Arguments for method GetLogRecord on L<Paws::CloudWatchLogs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetLogRecord on the
L<Amazon CloudWatch Logs|Paws::CloudWatchLogs> service. Use the attributes of this class
as arguments to method GetLogRecord.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetLogRecord.

=head1 SYNOPSIS

    my $logs = Paws->service('CloudWatchLogs');
    my $GetLogRecordResponse = $logs->GetLogRecord(
      LogRecordPointer => 'MyLogRecordPointer',

    );

    # Results:
    my $LogRecord = $GetLogRecordResponse->LogRecord;

    # Returns a L<Paws::CloudWatchLogs::GetLogRecordResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/logs/GetLogRecord>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LogRecordPointer => Str

The pointer corresponding to the log event record you want to retrieve.
You get this from the response of a C<GetQueryResults> operation. In
that response, the value of the C<@ptr> field for a log event is the
value to use as C<logRecordPointer> to retrieve that complete log event
record.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetLogRecord in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

