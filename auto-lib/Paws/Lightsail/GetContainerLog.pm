
package Paws::Lightsail::GetContainerLog;
  use Moose;
  has ContainerName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'containerName' , required => 1);
  has EndTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'endTime' );
  has FilterPattern => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'filterPattern' );
  has PageToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'pageToken' );
  has ServiceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceName' , required => 1);
  has StartTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'startTime' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetContainerLog');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::GetContainerLogResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetContainerLog - Arguments for method GetContainerLog on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetContainerLog on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method GetContainerLog.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetContainerLog.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $GetContainerLogResult = $lightsail->GetContainerLog(
      ContainerName => 'Mystring',
      ServiceName   => 'MyContainerServiceName',
      EndTime       => '1970-01-01T01:00:00',      # OPTIONAL
      FilterPattern => 'Mystring',                 # OPTIONAL
      PageToken     => 'Mystring',                 # OPTIONAL
      StartTime     => '1970-01-01T01:00:00',      # OPTIONAL
    );

    # Results:
    my $LogEvents     = $GetContainerLogResult->LogEvents;
    my $NextPageToken = $GetContainerLogResult->NextPageToken;

    # Returns a L<Paws::Lightsail::GetContainerLogResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/GetContainerLog>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ContainerName => Str

The name of the container that is either running or previously ran on
the container service for which to return a log.



=head2 EndTime => Str

The end of the time interval for which to get log data.

Constraints:

=over

=item *

Specified in Coordinated Universal Time (UTC).

=item *

Specified in the Unix time format.

For example, if you wish to use an end time of October 1, 2018, at 9 PM
UTC, specify C<1538427600> as the end time.

=back

You can convert a human-friendly time to Unix time format using a
converter like Epoch converter (https://www.epochconverter.com/).



=head2 FilterPattern => Str

The pattern to use to filter the returned log events to a specific
term.

The following are a few examples of filter patterns that you can
specify:

=over

=item *

To return all log events, specify a filter pattern of C<"">.

=item *

To exclude log events that contain the C<ERROR> term, and return all
other log events, specify a filter pattern of C<"-ERROR">.

=item *

To return log events that contain the C<ERROR> term, specify a filter
pattern of C<"ERROR">.

=item *

To return log events that contain both the C<ERROR> and C<Exception>
terms, specify a filter pattern of C<"ERROR Exception">.

=item *

To return log events that contain the C<ERROR> I<or> the C<Exception>
term, specify a filter pattern of C<"?ERROR ?Exception">.

=back




=head2 PageToken => Str

The token to advance to the next page of results from your request.

To get a page token, perform an initial C<GetContainerLog> request. If
your results are paginated, the response will return a next page token
that you can specify as the page token in a subsequent request.



=head2 B<REQUIRED> ServiceName => Str

The name of the container service for which to get a container log.



=head2 StartTime => Str

The start of the time interval for which to get log data.

Constraints:

=over

=item *

Specified in Coordinated Universal Time (UTC).

=item *

Specified in the Unix time format.

For example, if you wish to use a start time of October 1, 2018, at 8
PM UTC, specify C<1538424000> as the start time.

=back

You can convert a human-friendly time to Unix time format using a
converter like Epoch converter (https://www.epochconverter.com/).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetContainerLog in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

