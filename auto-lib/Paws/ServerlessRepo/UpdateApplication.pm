
package Paws::ServerlessRepo::UpdateApplication;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'applicationId', required => 1);
  has Author => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'author');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has HomePageUrl => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'homePageUrl');
  has Labels => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'labels');
  has ReadmeBody => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'readmeBody');
  has ReadmeUrl => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'readmeUrl');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateApplication');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{applicationId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServerlessRepo::UpdateApplicationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServerlessRepo::UpdateApplication - Arguments for method UpdateApplication on L<Paws::ServerlessRepo>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateApplication on the 
AWSServerlessApplicationRepository service. Use the attributes of this class
as arguments to method UpdateApplication.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateApplication.

As an example:

  $service_obj->UpdateApplication(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The ID of the application to get.



=head2 Author => Str

The name of the author publishing the app.

Min Length=1. Max Length=127.

Pattern "^[a-z0-9](([a-z0-9]|-(?!-))*[a-z0-9])?$";



=head2 Description => Str

The description of the application.

Min Length=1. Max Length=256



=head2 HomePageUrl => Str

A URL with more information about the application, for example the
location of your GitHub repository for the application.



=head2 Labels => ArrayRef[Str|Undef]

Labels to improve discovery of apps in search results.

Min Length=1. Max Length=127. Maximum number of labels: 10

Pattern: "^[a-zA-Z0-9+\\-_:\\/@]+$";



=head2 ReadmeBody => Str

A raw text Readme file that contains a more detailed description of the
application and how it works in markdown language.

Max size 5 MB



=head2 ReadmeUrl => Str

A link to the Readme file that contains a more detailed description of
the application and how it works in markdown language.

Max size 5 MB




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateApplication in L<Paws::ServerlessRepo>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

