
package Paws::Lightsail::TestAlarm;
  use Moose;
  has AlarmName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'alarmName' , required => 1);
  has State => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'state' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TestAlarm');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::TestAlarmResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::TestAlarm - Arguments for method TestAlarm on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TestAlarm on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method TestAlarm.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TestAlarm.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $TestAlarmResult = $lightsail->TestAlarm(
      AlarmName => 'MyResourceName',
      State     => 'OK',

    );

    # Results:
    my $Operations = $TestAlarmResult->Operations;

    # Returns a L<Paws::Lightsail::TestAlarmResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/TestAlarm>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AlarmName => Str

The name of the alarm to test.



=head2 B<REQUIRED> State => Str

The alarm state to test.

An alarm has the following possible states that can be tested:

=over

=item *

C<ALARM> - The metric is outside of the defined threshold.

=item *

C<INSUFFICIENT_DATA> - The alarm has just started, the metric is not
available, or not enough data is available for the metric to determine
the alarm state.

=item *

C<OK> - The metric is within the defined threshold.

=back


Valid values are: C<"OK">, C<"ALARM">, C<"INSUFFICIENT_DATA">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TestAlarm in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

