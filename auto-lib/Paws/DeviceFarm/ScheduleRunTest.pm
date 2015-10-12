package Paws::DeviceFarm::ScheduleRunTest;
  use Moose;
  has filter => (is => 'ro', isa => 'Str');
  has parameters => (is => 'ro', isa => 'Paws::DeviceFarm::TestParameters');
  has testPackageArn => (is => 'ro', isa => 'Str');
  has type => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::ScheduleRunTest

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DeviceFarm::ScheduleRunTest object:

  $service_obj->Method(Att1 => { filter => $value, ..., type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DeviceFarm::ScheduleRunTest object:

  $result = $service_obj->Method(...);
  $result->Att1->filter

=head1 ATTRIBUTES

=head2 filter => Str

  

The test's filter.










=head2 parameters => Paws::DeviceFarm::TestParameters

  

The test's parameters, such as test framework parameters and fixture
settings.










=head2 testPackageArn => Str

  

The ARN of the uploaded test that will be run.










=head2 B<REQUIRED> type => Str

  

The test's type.

Must be one of the following values:

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












=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

