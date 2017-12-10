
package Paws::ServerlessRepo::CreateApplicationVersion;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'applicationId', required => 1);
  has SemanticVersion => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'semanticVersion', required => 1);
  has SourceCodeUrl => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceCodeUrl');
  has TemplateBody => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'templateBody');
  has TemplateUrl => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'templateUrl');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateApplicationVersion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{applicationId}/versions/{semanticVersion}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServerlessRepo::CreateApplicationVersionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServerlessRepo::CreateApplicationVersion - Arguments for method CreateApplicationVersion on L<Paws::ServerlessRepo>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateApplicationVersion on the 
AWSServerlessApplicationRepository service. Use the attributes of this class
as arguments to method CreateApplicationVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateApplicationVersion.

As an example:

  $service_obj->CreateApplicationVersion(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The id of the application to create a new version for



=head2 B<REQUIRED> SemanticVersion => Str

The semantic version of the new version



=head2 SourceCodeUrl => Str

A link to a public repository for the source code of your application.



=head2 TemplateBody => Str

The raw packaged SAM template of your application.



=head2 TemplateUrl => Str

A link to the packaged SAM template of your application.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateApplicationVersion in L<Paws::ServerlessRepo>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

