
package Paws::CloudWatchLogs::TestMetricFilter;
  use Moose;
  has FilterPattern => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'filterPattern' , required => 1);
  has LogEventMessages => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'logEventMessages' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TestMetricFilter');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchLogs::TestMetricFilterResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::TestMetricFilter - Arguments for method TestMetricFilter on L<Paws::CloudWatchLogs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TestMetricFilter on the
L<Amazon CloudWatch Logs|Paws::CloudWatchLogs> service. Use the attributes of this class
as arguments to method TestMetricFilter.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TestMetricFilter.

=head1 SYNOPSIS

    my $logs = Paws->service('CloudWatchLogs');
    my $TestMetricFilterResponse = $logs->TestMetricFilter(
      FilterPattern    => 'MyFilterPattern',
      LogEventMessages => [
        'MyEventMessage', ...    # min: 1
      ],

    );

    # Results:
    my $Matches = $TestMetricFilterResponse->Matches;

    # Returns a L<Paws::CloudWatchLogs::TestMetricFilterResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/logs/TestMetricFilter>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FilterPattern => Str





=head2 B<REQUIRED> LogEventMessages => ArrayRef[Str|Undef]

The log event messages to test.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TestMetricFilter in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

