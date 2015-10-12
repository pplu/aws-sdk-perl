package Paws::DeviceFarm::Upload;
  use Moose;
  has arn => (is => 'ro', isa => 'Str');
  has contentType => (is => 'ro', isa => 'Str');
  has created => (is => 'ro', isa => 'Str');
  has message => (is => 'ro', isa => 'Str');
  has metadata => (is => 'ro', isa => 'Str');
  has name => (is => 'ro', isa => 'Str');
  has status => (is => 'ro', isa => 'Str');
  has type => (is => 'ro', isa => 'Str');
  has url => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::Upload

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DeviceFarm::Upload object:

  $service_obj->Method(Att1 => { arn => $value, ..., url => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DeviceFarm::Upload object:

  $result = $service_obj->Method(...);
  $result->Att1->arn

=head1 ATTRIBUTES

=head2 arn => Str

  The upload's ARN.

=head2 contentType => Str

  The upload's content type (for example, "application/octet-stream").

=head2 created => Str

  When the upload was created.

=head2 message => Str

  A message about the upload's result.

=head2 metadata => Str

  The upload's metadata. For example, for Android, this contains
information that is parsed from the manifest and is displayed in the
AWS Device Farm console after the associated app is uploaded.

=head2 name => Str

  The upload's file name.

=head2 status => Str

  The upload's status.

Must be one of the following values:

=over

=item *

FAILED: A failed status.

=item *

INITIALIZED: An initialized status.

=item *

PROCESSING: A processing status.

=item *

SUCCEEDED: A succeeded status.

=back

=head2 type => Str

  The upload's type.

Must be one of the following values:

=over

=item *

ANDROID_APP: An Android upload.

=item *

IOS_APP: An iOS upload.

=item *

EXTERNAL_DATA: An external data upload.

=item *

APPIUM_JAVA_JUNIT_TEST_PACKAGE: An Appium Java JUnit test package
upload.

=item *

APPIUM_JAVA_TESTNG_TEST_PACKAGE: An Appium Java TestNG test package
upload.

=item *

CALABASH_TEST_PACKAGE: A Calabash test package upload.

=item *

INSTRUMENTATION_TEST_PACKAGE: An instrumentation upload.

=item *

UIAUTOMATOR_TEST_PACKAGE: A uiautomator test package upload.

=item *

XCTEST_TEST_PACKAGE: An XCode test package upload.

=back

=head2 url => Str

  The pre-signed Amazon S3 URL that was used to store a file through a
corresponding PUT request.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

