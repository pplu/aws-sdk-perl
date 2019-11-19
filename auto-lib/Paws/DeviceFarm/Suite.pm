# Generated from default/object.tt
package Paws::DeviceFarm::Suite;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DeviceFarm::Types qw/DeviceFarm_DeviceMinutes DeviceFarm_Counters/;
  has Arn => (is => 'ro', isa => Str);
  has Counters => (is => 'ro', isa => DeviceFarm_Counters);
  has Created => (is => 'ro', isa => Str);
  has DeviceMinutes => (is => 'ro', isa => DeviceFarm_DeviceMinutes);
  has Message => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has Result => (is => 'ro', isa => Str);
  has Started => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);
  has Stopped => (is => 'ro', isa => Str);
  has Type => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Counters' => {
                               'type' => 'DeviceFarm_Counters',
                               'class' => 'Paws::DeviceFarm::Counters'
                             },
               'Result' => {
                             'type' => 'Str'
                           },
               'Type' => {
                           'type' => 'Str'
                         },
               'Created' => {
                              'type' => 'Str'
                            },
               'Stopped' => {
                              'type' => 'Str'
                            },
               'Started' => {
                              'type' => 'Str'
                            },
               'Status' => {
                             'type' => 'Str'
                           },
               'DeviceMinutes' => {
                                    'class' => 'Paws::DeviceFarm::DeviceMinutes',
                                    'type' => 'DeviceFarm_DeviceMinutes'
                                  },
               'Message' => {
                              'type' => 'Str'
                            },
               'Arn' => {
                          'type' => 'Str'
                        },
               'Name' => {
                           'type' => 'Str'
                         }
             },
  'NameInRequest' => {
                       'Result' => 'result',
                       'Counters' => 'counters',
                       'Started' => 'started',
                       'Stopped' => 'stopped',
                       'Type' => 'type',
                       'Created' => 'created',
                       'DeviceMinutes' => 'deviceMinutes',
                       'Message' => 'message',
                       'Status' => 'status',
                       'Name' => 'name',
                       'Arn' => 'arn'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::Suite

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DeviceFarm::Suite object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DeviceFarm::Suite object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Represents a collection of one or more tests.

=head1 ATTRIBUTES


=head2 Arn => Str

  The suite's ARN.


=head2 Counters => DeviceFarm_Counters

  The suite's result counters.


=head2 Created => Str

  When the suite was created.


=head2 DeviceMinutes => DeviceFarm_DeviceMinutes

  Represents the total (metered or unmetered) minutes used by the test
suite.


=head2 Message => Str

  A message about the suite's result.


=head2 Name => Str

  The suite's name.


=head2 Result => Str

  The suite's result.

Allowed values include:

=over

=item *

PENDING: A pending condition.

=item *

PASSED: A passing condition.

=item *

WARNED: A warning condition.

=item *

FAILED: A failed condition.

=item *

SKIPPED: A skipped condition.

=item *

ERRORED: An error condition.

=item *

STOPPED: A stopped condition.

=back



=head2 Started => Str

  The suite's start time.


=head2 Status => Str

  The suite's status.

Allowed values include:

=over

=item *

PENDING: A pending status.

=item *

PENDING_CONCURRENCY: A pending concurrency status.

=item *

PENDING_DEVICE: A pending device status.

=item *

PROCESSING: A processing status.

=item *

SCHEDULING: A scheduling status.

=item *

PREPARING: A preparing status.

=item *

RUNNING: A running status.

=item *

COMPLETED: A completed status.

=item *

STOPPING: A stopping status.

=back



=head2 Stopped => Str

  The suite's stop time.


=head2 Type => Str

  The suite's type.

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

XCTEST: The Xcode test type.

=item *

XCTEST_UI: The Xcode UI test type.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

