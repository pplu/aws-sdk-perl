
package Paws::DeviceFarm::GetDevicePoolCompatibility;
  use Moose;
  has AppArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'appArn' );
  has Configuration => (is => 'ro', isa => 'Paws::DeviceFarm::ScheduleRunConfiguration', traits => ['NameInRequest'], request_name => 'configuration' );
  has DevicePoolArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'devicePoolArn' , required => 1);
  has Test => (is => 'ro', isa => 'Paws::DeviceFarm::ScheduleRunTest', traits => ['NameInRequest'], request_name => 'test' );
  has TestType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'testType' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDevicePoolCompatibility');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DeviceFarm::GetDevicePoolCompatibilityResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::GetDevicePoolCompatibility - Arguments for method GetDevicePoolCompatibility on L<Paws::DeviceFarm>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDevicePoolCompatibility on the
L<AWS Device Farm|Paws::DeviceFarm> service. Use the attributes of this class
as arguments to method GetDevicePoolCompatibility.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDevicePoolCompatibility.

=head1 SYNOPSIS

    my $devicefarm = Paws->service('DeviceFarm');
    # To get information about the compatibility of a device pool
    # The following example returns information about the compatibility of a
    # specific device pool, given its ARN.
    my $GetDevicePoolCompatibilityResult =
      $devicefarm->GetDevicePoolCompatibility(
      {
        'AppArn' => 'arn:aws:devicefarm:us-west-2::app:123-456-EXAMPLE-GUID',
        'DevicePoolArn' =>
          'arn:aws:devicefarm:us-west-2::devicepool:123-456-EXAMPLE-GUID',
        'TestType' => 'APPIUM_PYTHON'
      }
      );

    # Results:
    my $compatibleDevices =
      $GetDevicePoolCompatibilityResult->compatibleDevices;
    my $incompatibleDevices =
      $GetDevicePoolCompatibilityResult->incompatibleDevices;

    # Returns a L<Paws::DeviceFarm::GetDevicePoolCompatibilityResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/devicefarm/GetDevicePoolCompatibility>

=head1 ATTRIBUTES


=head2 AppArn => Str

The ARN of the app that is associated with the specified device pool.



=head2 Configuration => L<Paws::DeviceFarm::ScheduleRunConfiguration>

An object containing information about the settings for a run.



=head2 B<REQUIRED> DevicePoolArn => Str

The device pool's ARN.



=head2 Test => L<Paws::DeviceFarm::ScheduleRunTest>

Information about the uploaded test to be run against the device pool.



=head2 TestType => Str

The test type for the specified device pool.

Allowed values include the following:

=over

=item *

BUILTIN_FUZZ: The built-in fuzz type.

=item *

BUILTIN_EXPLORER: For Android, an app explorer that will traverse an
Android app, interacting with it and capturing screenshots at the same
time.

=item *

APPIUM_JAVA_JUNIT: The Appium Java JUnit type.

=item *

APPIUM_JAVA_TESTNG: The Appium Java TestNG type.

=item *

APPIUM_PYTHON: The Appium Python type.

=item *

APPIUM_NODE: The Appium Node.js type.

=item *

APPIUM_RUBY: The Appium Ruby type.

=item *

APPIUM_WEB_JAVA_JUNIT: The Appium Java JUnit type for web apps.

=item *

APPIUM_WEB_JAVA_TESTNG: The Appium Java TestNG type for web apps.

=item *

APPIUM_WEB_PYTHON: The Appium Python type for web apps.

=item *

APPIUM_WEB_NODE: The Appium Node.js type for web apps.

=item *

APPIUM_WEB_RUBY: The Appium Ruby type for web apps.

=item *

CALABASH: The Calabash type.

=item *

INSTRUMENTATION: The Instrumentation type.

=item *

UIAUTOMATION: The uiautomation type.

=item *

UIAUTOMATOR: The uiautomator type.

=item *

XCTEST: The XCode test type.

=item *

XCTEST_UI: The XCode UI test type.

=back


Valid values are: C<"BUILTIN_FUZZ">, C<"BUILTIN_EXPLORER">, C<"WEB_PERFORMANCE_PROFILE">, C<"APPIUM_JAVA_JUNIT">, C<"APPIUM_JAVA_TESTNG">, C<"APPIUM_PYTHON">, C<"APPIUM_NODE">, C<"APPIUM_RUBY">, C<"APPIUM_WEB_JAVA_JUNIT">, C<"APPIUM_WEB_JAVA_TESTNG">, C<"APPIUM_WEB_PYTHON">, C<"APPIUM_WEB_NODE">, C<"APPIUM_WEB_RUBY">, C<"CALABASH">, C<"INSTRUMENTATION">, C<"UIAUTOMATION">, C<"UIAUTOMATOR">, C<"XCTEST">, C<"XCTEST_UI">, C<"REMOTE_ACCESS_RECORD">, C<"REMOTE_ACCESS_REPLAY">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDevicePoolCompatibility in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

