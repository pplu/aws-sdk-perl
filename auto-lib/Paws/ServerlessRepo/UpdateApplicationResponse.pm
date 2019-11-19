
package Paws::ServerlessRepo::UpdateApplicationResponse;
  use Moo;
  use Types::Standard qw/Str Undef ArrayRef/;
  use Paws::ServerlessRepo::Types qw/ServerlessRepo_Version/;
  has ApplicationId => (is => 'ro', isa => Str);
  has Author => (is => 'ro', isa => Str);
  has CreationTime => (is => 'ro', isa => Str);
  has Description => (is => 'ro', isa => Str);
  has HomePageUrl => (is => 'ro', isa => Str);
  has Labels => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has LicenseUrl => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has ReadmeUrl => (is => 'ro', isa => Str);
  has SpdxLicenseId => (is => 'ro', isa => Str);
  has Version => (is => 'ro', isa => ServerlessRepo_Version);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Description' => 'description',
                       'HomePageUrl' => 'homePageUrl',
                       'Version' => 'version',
                       'Author' => 'author',
                       'SpdxLicenseId' => 'spdxLicenseId',
                       'CreationTime' => 'creationTime',
                       'LicenseUrl' => 'licenseUrl',
                       'Labels' => 'labels',
                       'Name' => 'name',
                       'ReadmeUrl' => 'readmeUrl',
                       'ApplicationId' => 'applicationId'
                     },
  'types' => {
               'Description' => {
                                  'type' => 'Str'
                                },
               'HomePageUrl' => {
                                  'type' => 'Str'
                                },
               'Version' => {
                              'class' => 'Paws::ServerlessRepo::Version',
                              'type' => 'ServerlessRepo_Version'
                            },
               'Author' => {
                             'type' => 'Str'
                           },
               'SpdxLicenseId' => {
                                    'type' => 'Str'
                                  },
               'CreationTime' => {
                                   'type' => 'Str'
                                 },
               'Labels' => {
                             'type' => 'ArrayRef[Str|Undef]'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'LicenseUrl' => {
                                 'type' => 'Str'
                               },
               'ApplicationId' => {
                                    'type' => 'Str'
                                  },
               'Name' => {
                           'type' => 'Str'
                         },
               'ReadmeUrl' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ServerlessRepo::UpdateApplicationResponse

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


=head2 Version => ServerlessRepo_Version

Version information about the application.


=head2 _request_id => Str


=cut

