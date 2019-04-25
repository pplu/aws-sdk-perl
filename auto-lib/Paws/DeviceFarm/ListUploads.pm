
package Paws::DeviceFarm::ListUploads;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn' , required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListUploads');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DeviceFarm::ListUploadsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::ListUploads - Arguments for method ListUploads on L<Paws::DeviceFarm>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListUploads on the
L<AWS Device Farm|Paws::DeviceFarm> service. Use the attributes of this class
as arguments to method ListUploads.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListUploads.

=head1 SYNOPSIS

    my $devicefarm = Paws->service('DeviceFarm');
    # To get information about uploads
    # The following example returns information about uploads, given a specific
    # Device Farm project.
    my $ListUploadsResult = $devicefarm->ListUploads(
      {
        'Arn' =>
'arn:aws:devicefarm:us-west-2:123456789101:project:EXAMPLE-GUID-123-456',
        'NextToken' =>
          'RW5DdDJkMWYwZjM2MzM2VHVpOHJIUXlDUXlhc2QzRGViYnc9SEXAMPLE'
      }
    );

    # Results:
    my $uploads = $ListUploadsResult->uploads;

    # Returns a L<Paws::DeviceFarm::ListUploadsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/devicefarm/ListUploads>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the project for which you want to
list uploads.



=head2 NextToken => Str

An identifier that was returned from the previous call to this
operation, which can be used to return the next set of items in the
list.



=head2 Type => Str

The type of upload.

Must be one of the following values:

=over

=item *

ANDROID_APP: An Android upload.

=item *

IOS_APP: An iOS upload.

=item *

WEB_APP: A web appliction upload.

=item *

EXTERNAL_DATA: An external data upload.

=item *

APPIUM_JAVA_JUNIT_TEST_PACKAGE: An Appium Java JUnit test package
upload.

=item *

APPIUM_JAVA_TESTNG_TEST_PACKAGE: An Appium Java TestNG test package
upload.

=item *

APPIUM_PYTHON_TEST_PACKAGE: An Appium Python test package upload.

=item *

APPIUM_NODE_TEST_PACKAGE: An Appium Node.js test package upload.

=item *

APPIUM_RUBY_TEST_PACKAGE: An Appium Ruby test package upload.

=item *

APPIUM_WEB_JAVA_JUNIT_TEST_PACKAGE: An Appium Java JUnit test package
upload for a web app.

=item *

APPIUM_WEB_JAVA_TESTNG_TEST_PACKAGE: An Appium Java TestNG test package
upload for a web app.

=item *

APPIUM_WEB_PYTHON_TEST_PACKAGE: An Appium Python test package upload
for a web app.

=item *

APPIUM_WEB_NODE_TEST_PACKAGE: An Appium Node.js test package upload for
a web app.

=item *

APPIUM_WEB_RUBY_TEST_PACKAGE: An Appium Ruby test package upload for a
web app.

=item *

CALABASH_TEST_PACKAGE: A Calabash test package upload.

=item *

INSTRUMENTATION_TEST_PACKAGE: An instrumentation upload.

=item *

UIAUTOMATION_TEST_PACKAGE: A uiautomation test package upload.

=item *

UIAUTOMATOR_TEST_PACKAGE: A uiautomator test package upload.

=item *

XCTEST_TEST_PACKAGE: An XCode test package upload.

=item *

XCTEST_UI_TEST_PACKAGE: An XCode UI test package upload.

=item *

APPIUM_JAVA_JUNIT_TEST_SPEC: An Appium Java JUnit test spec upload.

=item *

APPIUM_JAVA_TESTNG_TEST_SPEC: An Appium Java TestNG test spec upload.

=item *

APPIUM_PYTHON_TEST_SPEC: An Appium Python test spec upload.

=item *

APPIUM_NODE_TEST_SPEC: An Appium Node.js test spec upload.

=item *

APPIUM_RUBY_TEST_SPEC: An Appium Ruby test spec upload.

=item *

APPIUM_WEB_JAVA_JUNIT_TEST_SPEC: An Appium Java JUnit test spec upload
for a web app.

=item *

APPIUM_WEB_JAVA_TESTNG_TEST_SPEC: An Appium Java TestNG test spec
upload for a web app.

=item *

APPIUM_WEB_PYTHON_TEST_SPEC: An Appium Python test spec upload for a
web app.

=item *

APPIUM_WEB_NODE_TEST_SPEC: An Appium Node.js test spec upload for a web
app.

=item *

APPIUM_WEB_RUBY_TEST_SPEC: An Appium Ruby test spec upload for a web
app.

=item *

INSTRUMENTATION_TEST_SPEC: An instrumentation test spec upload.

=item *

XCTEST_UI_TEST_SPEC: An XCode UI test spec upload.

=back


Valid values are: C<"ANDROID_APP">, C<"IOS_APP">, C<"WEB_APP">, C<"EXTERNAL_DATA">, C<"APPIUM_JAVA_JUNIT_TEST_PACKAGE">, C<"APPIUM_JAVA_TESTNG_TEST_PACKAGE">, C<"APPIUM_PYTHON_TEST_PACKAGE">, C<"APPIUM_NODE_TEST_PACKAGE">, C<"APPIUM_RUBY_TEST_PACKAGE">, C<"APPIUM_WEB_JAVA_JUNIT_TEST_PACKAGE">, C<"APPIUM_WEB_JAVA_TESTNG_TEST_PACKAGE">, C<"APPIUM_WEB_PYTHON_TEST_PACKAGE">, C<"APPIUM_WEB_NODE_TEST_PACKAGE">, C<"APPIUM_WEB_RUBY_TEST_PACKAGE">, C<"CALABASH_TEST_PACKAGE">, C<"INSTRUMENTATION_TEST_PACKAGE">, C<"UIAUTOMATION_TEST_PACKAGE">, C<"UIAUTOMATOR_TEST_PACKAGE">, C<"XCTEST_TEST_PACKAGE">, C<"XCTEST_UI_TEST_PACKAGE">, C<"APPIUM_JAVA_JUNIT_TEST_SPEC">, C<"APPIUM_JAVA_TESTNG_TEST_SPEC">, C<"APPIUM_PYTHON_TEST_SPEC">, C<"APPIUM_NODE_TEST_SPEC">, C<"APPIUM_RUBY_TEST_SPEC">, C<"APPIUM_WEB_JAVA_JUNIT_TEST_SPEC">, C<"APPIUM_WEB_JAVA_TESTNG_TEST_SPEC">, C<"APPIUM_WEB_PYTHON_TEST_SPEC">, C<"APPIUM_WEB_NODE_TEST_SPEC">, C<"APPIUM_WEB_RUBY_TEST_SPEC">, C<"INSTRUMENTATION_TEST_SPEC">, C<"XCTEST_UI_TEST_SPEC">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListUploads in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

