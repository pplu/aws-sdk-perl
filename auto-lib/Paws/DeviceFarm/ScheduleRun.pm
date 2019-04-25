
package Paws::DeviceFarm::ScheduleRun;
  use Moose;
  has AppArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'appArn' );
  has Configuration => (is => 'ro', isa => 'Paws::DeviceFarm::ScheduleRunConfiguration', traits => ['NameInRequest'], request_name => 'configuration' );
  has DevicePoolArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'devicePoolArn' );
  has DeviceSelectionConfiguration => (is => 'ro', isa => 'Paws::DeviceFarm::DeviceSelectionConfiguration', traits => ['NameInRequest'], request_name => 'deviceSelectionConfiguration' );
  has ExecutionConfiguration => (is => 'ro', isa => 'Paws::DeviceFarm::ExecutionConfiguration', traits => ['NameInRequest'], request_name => 'executionConfiguration' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' );
  has ProjectArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'projectArn' , required => 1);
  has Test => (is => 'ro', isa => 'Paws::DeviceFarm::ScheduleRunTest', traits => ['NameInRequest'], request_name => 'test' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ScheduleRun');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DeviceFarm::ScheduleRunResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::ScheduleRun - Arguments for method ScheduleRun on L<Paws::DeviceFarm>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ScheduleRun on the
L<AWS Device Farm|Paws::DeviceFarm> service. Use the attributes of this class
as arguments to method ScheduleRun.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ScheduleRun.

=head1 SYNOPSIS

    my $devicefarm = Paws->service('DeviceFarm');
    # To schedule a test run
    # The following example schedules a test run named MyRun.
    my $ScheduleRunResult = $devicefarm->ScheduleRun(
      {
        'DevicePoolArn' =>
          'arn:aws:devicefarm:us-west-2:123456789101:pool:EXAMPLE-GUID-123-456',
        'Name' => 'MyRun',
        'ProjectArn' =>
'arn:aws:devicefarm:us-west-2:123456789101:project:EXAMPLE-GUID-123-456',
        'Test' => {
          'TestPackageArn' =>
'arn:aws:devicefarm:us-west-2:123456789101:test:EXAMPLE-GUID-123-456',
          'Type' => 'APPIUM_JAVA_JUNIT'
        }
      }
    );

    # Results:
    my $run = $ScheduleRunResult->run;

    # Returns a L<Paws::DeviceFarm::ScheduleRunResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/devicefarm/ScheduleRun>

=head1 ATTRIBUTES


=head2 AppArn => Str

The ARN of the app to schedule a run.



=head2 Configuration => L<Paws::DeviceFarm::ScheduleRunConfiguration>

Information about the settings for the run to be scheduled.



=head2 DevicePoolArn => Str

The ARN of the device pool for the run to be scheduled.



=head2 DeviceSelectionConfiguration => L<Paws::DeviceFarm::DeviceSelectionConfiguration>

The filter criteria used to dynamically select a set of devices for a
test run, as well as the maximum number of devices to be included in
the run.

Either B< C<devicePoolArn> > or B< C<deviceSelectionConfiguration> > is
required in a request.



=head2 ExecutionConfiguration => L<Paws::DeviceFarm::ExecutionConfiguration>

Specifies configuration information about a test run, such as the
execution timeout (in minutes).



=head2 Name => Str

The name for the run to be scheduled.



=head2 B<REQUIRED> ProjectArn => Str

The ARN of the project for the run to be scheduled.



=head2 B<REQUIRED> Test => L<Paws::DeviceFarm::ScheduleRunTest>

Information about the test for the run to be scheduled.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ScheduleRun in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

