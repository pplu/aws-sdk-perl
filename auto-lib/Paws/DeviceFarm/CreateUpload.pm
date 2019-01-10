
package Paws::DeviceFarm::CreateUpload;
  use Moose;
  has ContentType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'contentType' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has ProjectArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'projectArn' , required => 1);
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateUpload');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DeviceFarm::CreateUploadResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::CreateUpload - Arguments for method CreateUpload on L<Paws::DeviceFarm>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateUpload on the
L<AWS Device Farm|Paws::DeviceFarm> service. Use the attributes of this class
as arguments to method CreateUpload.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateUpload.

=head1 SYNOPSIS

    my $devicefarm = Paws->service('DeviceFarm');
    # To create a new test package upload
    # The following example creates a new Appium Python test package upload
    # inside an existing project.
    my $CreateUploadResult = $devicefarm->CreateUpload(
      {
        'Name' => 'MyAppiumPythonUpload',
        'ProjectArn' =>
'arn:aws:devicefarm:us-west-2:123456789101:project:EXAMPLE-GUID-123-456',
        'Type' => 'APPIUM_PYTHON_TEST_PACKAGE'
      }
    );

    # Results:
    my $upload = $CreateUploadResult->upload;

    # Returns a L<Paws::DeviceFarm::CreateUploadResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/devicefarm/CreateUpload>

=head1 ATTRIBUTES


=head2 ContentType => Str

The upload's content type (for example, "application/octet-stream").



=head2 B<REQUIRED> Name => Str

The upload's file name. The name should not contain the '/' character.
If uploading an iOS app, the file name needs to end with the C<.ipa>
extension. If uploading an Android app, the file name needs to end with
the C<.apk> extension. For all others, the file name must end with the
C<.zip> file extension.



=head2 B<REQUIRED> ProjectArn => Str

The ARN of the project for the upload.



=head2 B<REQUIRED> Type => Str

The upload's upload type.

Must be one of the following values:

=over

=item *

ANDROID_APP: An Android upload.

=item *

IOS_APP: An iOS upload.

=item *

WEB_APP: A web application upload.

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

B<Note> If you call C<CreateUpload> with C<WEB_APP> specified, AWS
Device Farm throws an C<ArgumentException> error.

Valid values are: C<"ANDROID_APP">, C<"IOS_APP">, C<"WEB_APP">, C<"EXTERNAL_DATA">, C<"APPIUM_JAVA_JUNIT_TEST_PACKAGE">, C<"APPIUM_JAVA_TESTNG_TEST_PACKAGE">, C<"APPIUM_PYTHON_TEST_PACKAGE">, C<"APPIUM_NODE_TEST_PACKAGE">, C<"APPIUM_RUBY_TEST_PACKAGE">, C<"APPIUM_WEB_JAVA_JUNIT_TEST_PACKAGE">, C<"APPIUM_WEB_JAVA_TESTNG_TEST_PACKAGE">, C<"APPIUM_WEB_PYTHON_TEST_PACKAGE">, C<"APPIUM_WEB_NODE_TEST_PACKAGE">, C<"APPIUM_WEB_RUBY_TEST_PACKAGE">, C<"CALABASH_TEST_PACKAGE">, C<"INSTRUMENTATION_TEST_PACKAGE">, C<"UIAUTOMATION_TEST_PACKAGE">, C<"UIAUTOMATOR_TEST_PACKAGE">, C<"XCTEST_TEST_PACKAGE">, C<"XCTEST_UI_TEST_PACKAGE">, C<"APPIUM_JAVA_JUNIT_TEST_SPEC">, C<"APPIUM_JAVA_TESTNG_TEST_SPEC">, C<"APPIUM_PYTHON_TEST_SPEC">, C<"APPIUM_NODE_TEST_SPEC">, C<"APPIUM_RUBY_TEST_SPEC">, C<"APPIUM_WEB_JAVA_JUNIT_TEST_SPEC">, C<"APPIUM_WEB_JAVA_TESTNG_TEST_SPEC">, C<"APPIUM_WEB_PYTHON_TEST_SPEC">, C<"APPIUM_WEB_NODE_TEST_SPEC">, C<"APPIUM_WEB_RUBY_TEST_SPEC">, C<"INSTRUMENTATION_TEST_SPEC">, C<"XCTEST_UI_TEST_SPEC">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateUpload in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

