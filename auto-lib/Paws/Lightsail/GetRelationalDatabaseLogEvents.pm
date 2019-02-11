
package Paws::Lightsail::GetRelationalDatabaseLogEvents;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'endTime' );
  has LogStreamName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'logStreamName' , required => 1);
  has PageToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'pageToken' );
  has RelationalDatabaseName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'relationalDatabaseName' , required => 1);
  has StartFromHead => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'startFromHead' );
  has StartTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'startTime' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetRelationalDatabaseLogEvents');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::GetRelationalDatabaseLogEventsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetRelationalDatabaseLogEvents - Arguments for method GetRelationalDatabaseLogEvents on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetRelationalDatabaseLogEvents on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method GetRelationalDatabaseLogEvents.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetRelationalDatabaseLogEvents.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $GetRelationalDatabaseLogEventsResult =
      $lightsail->GetRelationalDatabaseLogEvents(
      LogStreamName          => 'Mystring',
      RelationalDatabaseName => 'MyResourceName',
      EndTime                => '1970-01-01T01:00:00',    # OPTIONAL
      PageToken              => 'Mystring',               # OPTIONAL
      StartFromHead          => 1,                        # OPTIONAL
      StartTime              => '1970-01-01T01:00:00',    # OPTIONAL
      );

    # Results:
    my $NextBackwardToken =
      $GetRelationalDatabaseLogEventsResult->NextBackwardToken;
    my $NextForwardToken =
      $GetRelationalDatabaseLogEventsResult->NextForwardToken;
    my $ResourceLogEvents =
      $GetRelationalDatabaseLogEventsResult->ResourceLogEvents;

    # Returns a L<Paws::Lightsail::GetRelationalDatabaseLogEventsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/GetRelationalDatabaseLogEvents>

=head1 ATTRIBUTES


=head2 EndTime => Str

The end of the time interval from which to get log events.

Constraints:

=over

=item *

Specified in Universal Coordinated Time (UTC).

=item *

Specified in the Unix time format.

For example, if you wish to use an end time of October 1, 2018, at 8 PM
UTC, then you input C<1538424000> as the end time.

=back




=head2 B<REQUIRED> LogStreamName => Str

The name of the log stream.

Use the C<get relational database log streams> operation to get a list
of available log streams.



=head2 PageToken => Str

A token used for advancing to a specific page of results for your C<get
relational database log events> request.



=head2 B<REQUIRED> RelationalDatabaseName => Str

The name of your database for which to get log events.



=head2 StartFromHead => Bool

Parameter to specify if the log should start from head or tail. If
C<true> is specified, the log event starts from the head of the log. If
C<false> is specified, the log event starts from the tail of the log.

Default: C<false>



=head2 StartTime => Str

The start of the time interval from which to get log events.

Constraints:

=over

=item *

Specified in Universal Coordinated Time (UTC).

=item *

Specified in the Unix time format.

For example, if you wish to use a start time of October 1, 2018, at 8
PM UTC, then you input C<1538424000> as the start time.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetRelationalDatabaseLogEvents in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

