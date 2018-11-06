
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
L<AWSServerlessApplicationRepository|Paws::ServerlessRepo> service. Use the attributes of this class
as arguments to method CreateApplicationVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateApplicationVersion.

=head1 SYNOPSIS

    my $serverlessrepo = Paws->service('ServerlessRepo');
    my $CreateApplicationVersionResponse =
      $serverlessrepo->CreateApplicationVersion(
      ApplicationId   => 'My__string',
      SemanticVersion => 'My__string',
      SourceCodeUrl   => 'My__string',    # OPTIONAL
      TemplateBody    => 'My__string',    # OPTIONAL
      TemplateUrl     => 'My__string',    # OPTIONAL
      );

    # Results:
    my $ApplicationId = $CreateApplicationVersionResponse->ApplicationId;
    my $CreationTime  = $CreateApplicationVersionResponse->CreationTime;
    my $ParameterDefinitions =
      $CreateApplicationVersionResponse->ParameterDefinitions;
    my $RequiredCapabilities =
      $CreateApplicationVersionResponse->RequiredCapabilities;
    my $ResourcesSupported =
      $CreateApplicationVersionResponse->ResourcesSupported;
    my $SemanticVersion = $CreateApplicationVersionResponse->SemanticVersion;
    my $SourceCodeUrl   = $CreateApplicationVersionResponse->SourceCodeUrl;
    my $TemplateUrl     = $CreateApplicationVersionResponse->TemplateUrl;

   # Returns a L<Paws::ServerlessRepo::CreateApplicationVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/serverlessrepo/CreateApplicationVersion>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The Amazon Resource Name (ARN) of the application.



=head2 B<REQUIRED> SemanticVersion => Str

The semantic version of the new version.



=head2 SourceCodeUrl => Str

A link to a public repository for the source code of your application.



=head2 TemplateBody => Str

The raw packaged AWS SAM template of your application.



=head2 TemplateUrl => Str

A link to the packaged AWS SAM template of your application.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateApplicationVersion in L<Paws::ServerlessRepo>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

