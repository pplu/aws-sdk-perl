package Paws::ServerlessRepo::CreateApplicationInput;
  use Moose;
  has Author => (is => 'ro', isa => 'Str', request_name => 'author', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has Labels => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'labels', traits => ['NameInRequest']);
  has LicenseBody => (is => 'ro', isa => 'Str', request_name => 'licenseBody', traits => ['NameInRequest']);
  has LicenseUrl => (is => 'ro', isa => 'Str', request_name => 'licenseUrl', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
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

Create application request.

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

This class forms part of L<Paws>, describing an object used in L<Paws::ServerlessRepo>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

