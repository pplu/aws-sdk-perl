
package Paws::ServerlessRepo::CreateApplication;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::ServerlessRepo::Types qw//;
  has Author => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Description => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has HomePageUrl => (is => 'ro', isa => Str, predicate => 1);
  has Labels => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has LicenseBody => (is => 'ro', isa => Str, predicate => 1);
  has LicenseUrl => (is => 'ro', isa => Str, predicate => 1);
  has Name => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ReadmeBody => (is => 'ro', isa => Str, predicate => 1);
  has ReadmeUrl => (is => 'ro', isa => Str, predicate => 1);
  has SemanticVersion => (is => 'ro', isa => Str, predicate => 1);
  has SourceCodeArchiveUrl => (is => 'ro', isa => Str, predicate => 1);
  has SourceCodeUrl => (is => 'ro', isa => Str, predicate => 1);
  has SpdxLicenseId => (is => 'ro', isa => Str, predicate => 1);
  has TemplateBody => (is => 'ro', isa => Str, predicate => 1);
  has TemplateUrl => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateApplication');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/applications');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::ServerlessRepo::CreateApplicationResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'HomePageUrl' => {
                                  'type' => 'Str'
                                },
               'SourceCodeUrl' => {
                                    'type' => 'Str'
                                  },
               'ReadmeBody' => {
                                 'type' => 'Str'
                               },
               'LicenseBody' => {
                                  'type' => 'Str'
                                },
               'TemplateUrl' => {
                                  'type' => 'Str'
                                },
               'SpdxLicenseId' => {
                                    'type' => 'Str'
                                  },
               'TemplateBody' => {
                                   'type' => 'Str'
                                 },
               'Labels' => {
                             'type' => 'ArrayRef[Str|Undef]'
                           },
               'SemanticVersion' => {
                                      'type' => 'Str'
                                    },
               'LicenseUrl' => {
                                 'type' => 'Str'
                               },
               'SourceCodeArchiveUrl' => {
                                           'type' => 'Str'
                                         },
               'ReadmeUrl' => {
                                'type' => 'Str'
                              },
               'Description' => {
                                  'type' => 'Str'
                                },
               'Name' => {
                           'type' => 'Str'
                         },
               'Author' => {
                             'type' => 'Str'
                           }
             },
  'NameInRequest' => {
                       'HomePageUrl' => 'homePageUrl',
                       'SourceCodeUrl' => 'sourceCodeUrl',
                       'ReadmeBody' => 'readmeBody',
                       'LicenseBody' => 'licenseBody',
                       'TemplateUrl' => 'templateUrl',
                       'SpdxLicenseId' => 'spdxLicenseId',
                       'TemplateBody' => 'templateBody',
                       'Labels' => 'labels',
                       'SemanticVersion' => 'semanticVersion',
                       'LicenseUrl' => 'licenseUrl',
                       'SourceCodeArchiveUrl' => 'sourceCodeArchiveUrl',
                       'ReadmeUrl' => 'readmeUrl',
                       'Description' => 'description',
                       'Name' => 'name',
                       'Author' => 'author'
                     },
  'IsRequired' => {
                    'Name' => 1,
                    'Description' => 1,
                    'Author' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ServerlessRepo::CreateApplication - Arguments for method CreateApplication on L<Paws::ServerlessRepo>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateApplication on the
L<AWSServerlessApplicationRepository|Paws::ServerlessRepo> service. Use the attributes of this class
as arguments to method CreateApplication.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateApplication.

=head1 SYNOPSIS

    my $serverlessrepo = Paws->service('ServerlessRepo');
    my $CreateApplicationResponse = $serverlessrepo->CreateApplication(
      Author               => 'My__string',
      Description          => 'My__string',
      Name                 => 'My__string',
      HomePageUrl          => 'My__string',             # OPTIONAL
      Labels               => [ 'My__string', ... ],    # OPTIONAL
      LicenseBody          => 'My__string',             # OPTIONAL
      LicenseUrl           => 'My__string',             # OPTIONAL
      ReadmeBody           => 'My__string',             # OPTIONAL
      ReadmeUrl            => 'My__string',             # OPTIONAL
      SemanticVersion      => 'My__string',             # OPTIONAL
      SourceCodeArchiveUrl => 'My__string',             # OPTIONAL
      SourceCodeUrl        => 'My__string',             # OPTIONAL
      SpdxLicenseId        => 'My__string',             # OPTIONAL
      TemplateBody         => 'My__string',             # OPTIONAL
      TemplateUrl          => 'My__string',             # OPTIONAL
    );

    # Results:
    my $ApplicationId = $CreateApplicationResponse->ApplicationId;
    my $Author        = $CreateApplicationResponse->Author;
    my $CreationTime  = $CreateApplicationResponse->CreationTime;
    my $Description   = $CreateApplicationResponse->Description;
    my $HomePageUrl   = $CreateApplicationResponse->HomePageUrl;
    my $Labels        = $CreateApplicationResponse->Labels;
    my $LicenseUrl    = $CreateApplicationResponse->LicenseUrl;
    my $Name          = $CreateApplicationResponse->Name;
    my $ReadmeUrl     = $CreateApplicationResponse->ReadmeUrl;
    my $SpdxLicenseId = $CreateApplicationResponse->SpdxLicenseId;
    my $Version       = $CreateApplicationResponse->Version;

    # Returns a L<Paws::ServerlessRepo::CreateApplicationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/serverlessrepo/CreateApplication>

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



=head2 SourceCodeArchiveUrl => Str

A link to the S3 object that contains the ZIP archive of the source
code for this version of your application.

Maximum size 50 MB



=head2 SourceCodeUrl => Str

A link to a public repository for the source code of your application,
for example the URL of a specific GitHub commit.



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

This class forms part of L<Paws>, documenting arguments for method CreateApplication in L<Paws::ServerlessRepo>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

