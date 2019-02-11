
package Paws::ServerlessRepo::CreateApplicationResponse;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'applicationId');
  has Author => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'author');
  has CreationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationTime');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has HomePageUrl => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'homePageUrl');
  has Labels => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'labels');
  has LicenseUrl => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'licenseUrl');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has ReadmeUrl => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'readmeUrl');
  has SpdxLicenseId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'spdxLicenseId');
  has Version => (is => 'ro', isa => 'Paws::ServerlessRepo::Version', traits => ['NameInRequest'], request_name => 'version');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServerlessRepo::CreateApplicationResponse

=head1 ATTRIBUTES


=head2 ApplicationId => Str

The application Amazon Resource Name (ARN).


=head2 Author => Str

The name of the author publishing the app.

Minimum length=1. Maximum length=127.

Pattern "^[a-z0-9](([a-z0-9]|-(?!-))*[a-z0-9])?$";


=head2 CreationTime => Str

The date and time this resource was created.


=head2 Description => Str

The description of the application.

Minimum length=1. Maximum length=256


=head2 HomePageUrl => Str

A URL with more information about the application, for example the
location of your GitHub repository for the application.


=head2 Labels => ArrayRef[Str|Undef]

Labels to improve discovery of apps in search results.

Minimum length=1. Maximum length=127. Maximum number of labels: 10

Pattern: "^[a-zA-Z0-9+\\-_:\\/@]+$";


=head2 LicenseUrl => Str

A link to a license file of the app that matches the spdxLicenseID
value of your application.

Maximum size 5 MB


=head2 Name => Str

The name of the application.

Minimum length=1. Maximum length=140

Pattern: "[a-zA-Z0-9\\-]+";


=head2 ReadmeUrl => Str

A link to the readme file in Markdown language that contains a more
detailed description of the application and how it works.

Maximum size 5 MB


=head2 SpdxLicenseId => Str

A valid identifier from https://spdx.org/licenses/.


=head2 Version => L<Paws::ServerlessRepo::Version>

Version information about the application.


=head2 _request_id => Str


=cut

