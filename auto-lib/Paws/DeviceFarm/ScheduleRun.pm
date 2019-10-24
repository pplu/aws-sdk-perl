# Generated from json/callargs_class.tt

package Paws::DeviceFarm::ScheduleRun;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DeviceFarm::Types qw/DeviceFarm_ScheduleRunTest DeviceFarm_ScheduleRunConfiguration DeviceFarm_DeviceSelectionConfiguration DeviceFarm_ExecutionConfiguration/;
  has AppArn => (is => 'ro', isa => Str, predicate => 1);
  has Configuration => (is => 'ro', isa => DeviceFarm_ScheduleRunConfiguration, predicate => 1);
  has DevicePoolArn => (is => 'ro', isa => Str, predicate => 1);
  has DeviceSelectionConfiguration => (is => 'ro', isa => DeviceFarm_DeviceSelectionConfiguration, predicate => 1);
  has ExecutionConfiguration => (is => 'ro', isa => DeviceFarm_ExecutionConfiguration, predicate => 1);
  has Name => (is => 'ro', isa => Str, predicate => 1);
  has ProjectArn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Test => (is => 'ro', isa => DeviceFarm_ScheduleRunTest, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ScheduleRun');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::DeviceFarm::ScheduleRunResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Configuration' => {
                                    'class' => 'Paws::DeviceFarm::ScheduleRunConfiguration',
                                    'type' => 'DeviceFarm_ScheduleRunConfiguration'
                                  },
               'ExecutionConfiguration' => {
                                             'class' => 'Paws::DeviceFarm::ExecutionConfiguration',
                                             'type' => 'DeviceFarm_ExecutionConfiguration'
                                           },
               'DevicePoolArn' => {
                                    'type' => 'Str'
                                  },
               'DeviceSelectionConfiguration' => {
                                                   'class' => 'Paws::DeviceFarm::DeviceSelectionConfiguration',
                                                   'type' => 'DeviceFarm_DeviceSelectionConfiguration'
                                                 },
               'AppArn' => {
                             'type' => 'Str'
                           },
               'ProjectArn' => {
                                 'type' => 'Str'
                               },
               'Test' => {
                           'class' => 'Paws::DeviceFarm::ScheduleRunTest',
                           'type' => 'DeviceFarm_ScheduleRunTest'
                         },
               'Name' => {
                           'type' => 'Str'
                         }
             },
  'NameInRequest' => {
                       'Configuration' => 'configuration',
                       'ExecutionConfiguration' => 'executionConfiguration',
                       'DevicePoolArn' => 'devicePoolArn',
                       'DeviceSelectionConfiguration' => 'deviceSelectionConfiguration',
                       'AppArn' => 'appArn',
                       'ProjectArn' => 'projectArn',
                       'Test' => 'test',
                       'Name' => 'name'
                     },
  'IsRequired' => {
                    'ProjectArn' => 1,
                    'Test' => 1
                  }
}
;
    return $Params_map;
  }

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
    );

    # Results:
    my $run = $ScheduleRunResult->run;

    # Returns a L<Paws::DeviceFarm::ScheduleRunResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/devicefarm/ScheduleRun>

=head1 ATTRIBUTES


=head2 AppArn => Str

The ARN of the app to schedule a run.



=head2 Configuration => DeviceFarm_ScheduleRunConfiguration

Information about the settings for the run to be scheduled.



=head2 DevicePoolArn => Str

The ARN of the device pool for the run to be scheduled.



=head2 DeviceSelectionConfiguration => DeviceFarm_DeviceSelectionConfiguration

The filter criteria used to dynamically select a set of devices for a
test run, as well as the maximum number of devices to be included in
the run.

Either B< C<devicePoolArn> > or B< C<deviceSelectionConfiguration> > is
required in a request.



=head2 ExecutionConfiguration => DeviceFarm_ExecutionConfiguration

Specifies configuration information about a test run, such as the
execution timeout (in minutes).



=head2 Name => Str

The name for the run to be scheduled.



=head2 B<REQUIRED> ProjectArn => Str

The ARN of the project for the run to be scheduled.



=head2 B<REQUIRED> Test => DeviceFarm_ScheduleRunTest

Information about the test for the run to be scheduled.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ScheduleRun in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

