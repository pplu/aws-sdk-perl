
package Paws::ServerlessRepo::CreateApplication;
  use Moose;
  has Author => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'author');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Labels => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'labels');
  has LicenseBody => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'licenseBody');
  has LicenseUrl => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'licenseUrl');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has ReadmeBody => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'readmeBody');
  has ReadmeUrl => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'readmeUrl');
  has SemanticVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'semanticVersion');
  has SourceCodeUrl => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceCodeUrl');
  has SpdxLicenseId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'spdxLicenseId');
  has TemplateBody => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'templateBody');
  has TemplateUrl => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'templateUrl');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateApplication');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServerlessRepo::CreateApplicationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServerlessRepo::CreateApplication - Arguments for method CreateApplication on L<Paws::ServerlessRepo>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateApplication on the 
AWSServerlessApplicationRepository service. Use the attributes of this class
as arguments to method CreateApplication.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateApplication.

As an example:

  $service_obj->CreateApplication(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Author => Str

The name of the author publishing the app.\nMin Length=1. Max
Length=127.\nPattern "^[a-z0-9](([a-z0-9]|-(?!-))*[a-z0-9])?$";



=head2 Description => Str

The description of the application.\nMin Length=1. Max Length=256



=head2 Labels => ArrayRef[Str|Undef]

Labels to improve discovery of apps in search results.\nMin Length=1.
Max Length=127. Maximum number of labels: 10\nPattern:
"^[a-zA-Z0-9+\\-_:\\/@]+$";



=head2 LicenseBody => Str

A raw text file that contains the license of the app that matches the
spdxLicenseID of your application.\nMax size 5 MB



=head2 LicenseUrl => Str

A link to a license file of the app that matches the spdxLicenseID of
your application.\nMax size 5 MB



=head2 Name => Str

The name of the application you want to publish.\nMin Length=1. Max
Length=140\nPattern: "[a-zA-Z0-9\\-]+";



=head2 ReadmeBody => Str

A raw text Readme file that contains a more detailed description of the
application and how it works in markdown language.\nMax size 5 MB



=head2 ReadmeUrl => Str

A link to the Readme file that contains a more detailed description of
the application and how it works in markdown language.\nMax size 5 MB



=head2 SemanticVersion => Str

The semantic version of the application:\n\n https://semver.org/



=head2 SourceCodeUrl => Str

A link to a public repository for the source code of your application.



=head2 SpdxLicenseId => Str

A valid identifier from https://spdx.org/licenses/ .



=head2 TemplateBody => Str

The raw packaged SAM template of your application.



=head2 TemplateUrl => Str

A link to the packaged SAM template of your application.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateApplication in L<Paws::ServerlessRepo>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

