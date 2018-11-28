
package Paws::CloudWatchLogs::GetLogGroupFields;
  use Moose;
  has LogGroupName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'logGroupName' , required => 1);
  has Time => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'time' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetLogGroupFields');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchLogs::GetLogGroupFieldsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::GetLogGroupFields - Arguments for method GetLogGroupFields on L<Paws::CloudWatchLogs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetLogGroupFields on the
L<Amazon CloudWatch Logs|Paws::CloudWatchLogs> service. Use the attributes of this class
as arguments to method GetLogGroupFields.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetLogGroupFields.

=head1 SYNOPSIS

    my $logs = Paws->service('CloudWatchLogs');
    my $GetLogGroupFieldsResponse = $logs->GetLogGroupFields(
      LogGroupName => 'MyLogGroupName',
      Time         => 1,                  # OPTIONAL
    );

    # Results:
    my $LogGroupFields = $GetLogGroupFieldsResponse->LogGroupFields;

    # Returns a L<Paws::CloudWatchLogs::GetLogGroupFieldsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/logs/GetLogGroupFields>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LogGroupName => Str

The name of the log group to search.



=head2 Time => Int

The time to set as the center of the query. If you specify C<time>, the
8 minutes before and 8 minutes after this time are searched. If you
omit C<time>, the past 15 minutes are queried.

The C<time> value is specified as epoch time, the number of seconds
since January 1, 1970, 00:00:00 UTC.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetLogGroupFields in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

