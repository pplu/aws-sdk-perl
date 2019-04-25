package Paws::ServerlessRepo::CreateApplicationInput;
  use Moose;
  has Author => (is => 'ro', isa => 'Str', request_name => 'author', traits => ['NameInRequest'], required => 1);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest'], required => 1);
  has HomePageUrl => (is => 'ro', isa => 'Str', request_name => 'homePageUrl', traits => ['NameInRequest']);
  has Labels => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'labels', traits => ['NameInRequest']);
  has LicenseBody => (is => 'ro', isa => 'Str', request_name => 'licenseBody', traits => ['NameInRequest']);
  has LicenseUrl => (is => 'ro', isa => 'Str', request_name => 'licenseUrl', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest'], required => 1);
  has ReadmeBody => (is => 'ro', isa => 'Str', request_name => 'readmeBody', traits => ['NameInRequest']);
  has ReadmeUrl => (is => 'ro', isa => 'Str', request_name => 'readmeUrl', traits => ['NameInRequest']);
  has SemanticVersion => (is => 'ro', isa => 'Str', request_name => 'semanticVersion', traits => ['NameInRequest']);
  has SourceCodeUrl => (is => 'ro', isa => 'Str', request_name => 'sourceCodeUrl', traits => ['NameInRequest']);
  has SpdxLicenseId => (is => 'ro', isa => 'Str', request_name => 'spdxLicenseId', traits => ['NameInRequest']);
  has TemplateBody => (is => 'ro', isa => 'Str', request_name => 'templateBody', traits => ['NameInRequest']);
  has TemplateUrl => (is => 'ro', isa => 'Str', request_name => 'templateUrl', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServerlessRepo::CreateApplicationInput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServerlessRepo::CreateApplicationInput object:

  $service_obj->Method(Att1 => { Author => $value, ..., TemplateUrl => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServerlessRepo::CreateApplicationInput object:

  $result = $service_obj->Method(...);
  $result->Att1->Author

=head1 DESCRIPTION

Create an application request.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Author => Str

  The name of the author publishing the app.

Minimum length=1. Maximum length=127.

Pattern "^[a-z0-9](([a-z0-9]|-(?!-))*[a-z0-9])?$";


=head2 B<REQUIRED> Description => Str

  The description of the application.

Minimum length=1. Maximum length=256


=head2 HomePageUrl => Str

  A URL with more information about the application, for example the
location of your GitHub repository for the application.


=head2 Labels => ArrayRef[Str|Undef]

  Labels to improve discovery of apps in search results.

Minimum length=1. Maximum length=127. Maximum number of labels: 10

Pattern: "^[a-zA-Z0-9+\\-_:\\/@]+$";


=head2 LicenseBody => Str

  A local text file that contains the license of the app that matches the
spdxLicenseID value of your application. The file has the format
file://E<lt>pathE<gt>/E<lt>filenameE<gt>.

Maximum size 5 MB

You can specify only one of licenseBody and licenseUrl; otherwise, an
error results.


=head2 LicenseUrl => Str

  A link to the S3 object that contains the license of the app that
matches the spdxLicenseID value of your application.

Maximum size 5 MB

You can specify only one of licenseBody and licenseUrl; otherwise, an
error results.


=head2 B<REQUIRED> Name => Str

  The name of the application that you want to publish.

Minimum length=1. Maximum length=140

Pattern: "[a-zA-Z0-9\\-]+";


=head2 ReadmeBody => Str

  A local text readme file in Markdown language that contains a more
detailed description of the application and how it works. The file has
the format file://E<lt>pathE<gt>/E<lt>filenameE<gt>.

Maximum size 5 MB

You can specify only one of readmeBody and readmeUrl; otherwise, an
error results.


=head2 ReadmeUrl => Str

  A link to the S3 object in Markdown language that contains a more
detailed description of the application and how it works.

Maximum size 5 MB

You can specify only one of readmeBody and readmeUrl; otherwise, an
error results.


=head2 SemanticVersion => Str

  The semantic version of the application:

https://semver.org/ (https://semver.org/)


=head2 SourceCodeUrl => Str

  A link to a public repository for the source code of your application.


=head2 SpdxLicenseId => Str

  A valid identifier from https://spdx.org/licenses/
(https://spdx.org/licenses/).


=head2 TemplateBody => Str

  The local raw packaged AWS SAM template file of your application. The
file has the format file://E<lt>pathE<gt>/E<lt>filenameE<gt>.

You can specify only one of templateBody and templateUrl; otherwise an
error results.


=head2 TemplateUrl => Str

  A link to the S3 object containing the packaged AWS SAM template of
your application.

You can specify only one of templateBody and templateUrl; otherwise an
error results.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServerlessRepo>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

