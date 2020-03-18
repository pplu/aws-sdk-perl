package Paws::DeviceFarm::Upload;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest']);
  has Category => (is => 'ro', isa => 'Str', request_name => 'category', traits => ['NameInRequest']);
  has ContentType => (is => 'ro', isa => 'Str', request_name => 'contentType', traits => ['NameInRequest']);
  has Created => (is => 'ro', isa => 'Str', request_name => 'created', traits => ['NameInRequest']);
  has Message => (is => 'ro', isa => 'Str', request_name => 'message', traits => ['NameInRequest']);
  has Metadata => (is => 'ro', isa => 'Str', request_name => 'metadata', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest']);
  has Url => (is => 'ro', isa => 'Str', request_name => 'url', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::Upload

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DeviceFarm::Upload object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Url => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DeviceFarm::Upload object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

An app or a set of one or more tests to upload or that have been
uploaded.

=head1 ATTRIBUTES


=head2 Arn => Str

  The upload's ARN.


=head2 Category => Str

  The upload's category. Allowed values include:

=over

=item *

CURATED: An upload managed by AWS Device Farm.

=item *

PRIVATE: An upload managed by the AWS Device Farm customer.

=back



=head2 ContentType => Str

  The upload's content type (for example, C<application/octet-stream>).


=head2 Created => Str

  When the upload was created.


=head2 Message => Str

  A message about the upload's result.


=head2 Metadata => Str

  The upload's metadata. For example, for Android, this contains
information that is parsed from the manifest and is displayed in the
AWS Device Farm console after the associated app is uploaded.


=head2 Name => Str

  The upload's file name.


=head2 Status => Str

  The upload's status.

Must be one of the following values:

=over

=item *

FAILED

=item *

INITIALIZED

=item *

PROCESSING

=item *

SUCCEEDED

=back



=head2 Type => Str

  The upload's type.

Must be one of the following values:

=over

=item *

ANDROID_APP

=item *

IOS_APP

=item *

WEB_APP

=item *

EXTERNAL_DATA

=item *

APPIUM_JAVA_JUNIT_TEST_PACKAGE

=item *

APPIUM_JAVA_TESTNG_TEST_PACKAGE

=item *

APPIUM_PYTHON_TEST_PACKAGE

=item *

APPIUM_NODE_TEST_PACKAGE

=item *

APPIUM_RUBY_TEST_PACKAGE

=item *

APPIUM_WEB_JAVA_JUNIT_TEST_PACKAGE

=item *

APPIUM_WEB_JAVA_TESTNG_TEST_PACKAGE

=item *

APPIUM_WEB_PYTHON_TEST_PACKAGE

=item *

APPIUM_WEB_NODE_TEST_PACKAGE

=item *

APPIUM_WEB_RUBY_TEST_PACKAGE

=item *

CALABASH_TEST_PACKAGE

=item *

INSTRUMENTATION_TEST_PACKAGE

=item *

UIAUTOMATION_TEST_PACKAGE

=item *

UIAUTOMATOR_TEST_PACKAGE

=item *

XCTEST_TEST_PACKAGE

=item *

XCTEST_UI_TEST_PACKAGE

=item *

APPIUM_JAVA_JUNIT_TEST_SPEC

=item *

APPIUM_JAVA_TESTNG_TEST_SPEC

=item *

APPIUM_PYTHON_TEST_SPEC

=item *

APPIUM_NODE_TEST_SPEC

=item *

APPIUM_RUBY_TEST_SPEC

=item *

APPIUM_WEB_JAVA_JUNIT_TEST_SPEC

=item *

APPIUM_WEB_JAVA_TESTNG_TEST_SPEC

=item *

APPIUM_WEB_PYTHON_TEST_SPEC

=item *

APPIUM_WEB_NODE_TEST_SPEC

=item *

APPIUM_WEB_RUBY_TEST_SPEC

=item *

INSTRUMENTATION_TEST_SPEC

=item *

XCTEST_UI_TEST_SPEC

=back



=head2 Url => Str

  The presigned Amazon S3 URL that was used to store a file using a PUT
request.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

