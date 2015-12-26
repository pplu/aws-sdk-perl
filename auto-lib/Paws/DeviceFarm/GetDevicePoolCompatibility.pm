
package Paws::DeviceFarm::GetDevicePoolCompatibility;
  use Moose;
  has AppArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'appArn' );
  has DevicePoolArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'devicePoolArn' , required => 1);
  has TestType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'testType' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDevicePoolCompatibility');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DeviceFarm::GetDevicePoolCompatibilityResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::GetDevicePoolCompatibility - Arguments for method GetDevicePoolCompatibility on Paws::DeviceFarm

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDevicePoolCompatibility on the 
AWS Device Farm service. Use the attributes of this class
as arguments to method GetDevicePoolCompatibility.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDevicePoolCompatibility.

As an example:

  $service_obj->GetDevicePoolCompatibility(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 AppArn => Str

The ARN of the app that is associated with the specified device pool.



=head2 B<REQUIRED> DevicePoolArn => Str

The device pool's ARN.



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

CALABASH: The Calabash type.

=item *

INSTRUMENTATION: The Instrumentation type.

=item *

UIAUTOMATION: The uiautomation type.

=item *

UIAUTOMATOR: The uiautomator type.

=item *

XCTEST: The XCode test type.

=back


Valid values are: C<"BUILTIN_FUZZ">, C<"BUILTIN_EXPLORER">, C<"APPIUM_JAVA_JUNIT">, C<"APPIUM_JAVA_TESTNG">, C<"APPIUM_WEB_JAVA_JUNIT">, C<"APPIUM_WEB_JAVA_TESTNG">, C<"CALABASH">, C<"INSTRUMENTATION">, C<"UIAUTOMATION">, C<"UIAUTOMATOR">, C<"XCTEST">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDevicePoolCompatibility in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

