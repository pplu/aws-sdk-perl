# Generated from default/object.tt
package Paws::ServerlessRepo::Application;
  use Moo;
  use Types::Standard qw/Str Undef ArrayRef/;
  use Paws::ServerlessRepo::Types qw/ServerlessRepo_Version/;
  has ApplicationId => (is => 'ro', isa => Str, required => 1);
  has Author => (is => 'ro', isa => Str, required => 1);
  has CreationTime => (is => 'ro', isa => Str);
  has Description => (is => 'ro', isa => Str, required => 1);
  has HomePageUrl => (is => 'ro', isa => Str);
  has Labels => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has LicenseUrl => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str, required => 1);
  has ReadmeUrl => (is => 'ro', isa => Str);
  has SpdxLicenseId => (is => 'ro', isa => Str);
  has Version => (is => 'ro', isa => ServerlessRepo_Version);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SpdxLicenseId' => {
                                    'type' => 'Str'
                                  },
               'CreationTime' => {
                                   'type' => 'Str'
                                 },
               'Labels' => {
                             'type' => 'ArrayRef[Str|Undef]'
                           },
               'LicenseUrl' => {
                                 'type' => 'Str'
                               },
               'ApplicationId' => {
                                    'type' => 'Str'
                                  },
               'ReadmeUrl' => {
                                'type' => 'Str'
                              },
               'Name' => {
                           'type' => 'Str'
                         },
               'Description' => {
                                  'type' => 'Str'
                                },
               'Version' => {
                              'class' => 'Paws::ServerlessRepo::Version',
                              'type' => 'ServerlessRepo_Version'
                            },
               'HomePageUrl' => {
                                  'type' => 'Str'
                                },
               'Author' => {
                             'type' => 'Str'
                           }
             },
  'IsRequired' => {
                    'Description' => 1,
                    'Author' => 1,
                    'Name' => 1,
                    'ApplicationId' => 1
                  },
  'NameInRequest' => {
                       'Author' => 'author',
                       'Version' => 'version',
                       'HomePageUrl' => 'homePageUrl',
                       'Description' => 'description',
                       'ReadmeUrl' => 'readmeUrl',
                       'Name' => 'name',
                       'ApplicationId' => 'applicationId',
                       'LicenseUrl' => 'licenseUrl',
                       'Labels' => 'labels',
                       'CreationTime' => 'creationTime',
                       'SpdxLicenseId' => 'spdxLicenseId'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::ServerlessRepo::Application

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServerlessRepo::Application object:

  $service_obj->Method(Att1 => { ApplicationId => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServerlessRepo::Application object:

  $result = $service_obj->Method(...);
  $result->Att1->ApplicationId

=head1 DESCRIPTION

Details about the application.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

  The application Amazon Resource Name (ARN).


=head2 B<REQUIRED> Author => Str

  The name of the author publishing the app.

Minimum length=1. Maximum length=127.

Pattern "^[a-z0-9](([a-z0-9]|-(?!-))*[a-z0-9])?$";


=head2 CreationTime => Str

  The date and time this resource was created.


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


=head2 LicenseUrl => Str

  A link to a license file of the app that matches the spdxLicenseID
value of your application.

Maximum size 5 MB


=head2 B<REQUIRED> Name => Str

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



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServerlessRepo>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

