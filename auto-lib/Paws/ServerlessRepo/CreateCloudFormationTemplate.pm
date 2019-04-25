
package Paws::ServerlessRepo::CreateCloudFormationTemplate;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'applicationId', required => 1);
  has SemanticVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'semanticVersion');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCloudFormationTemplate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{applicationId}/templates');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServerlessRepo::CreateCloudFormationTemplateResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServerlessRepo::CreateCloudFormationTemplate - Arguments for method CreateCloudFormationTemplate on L<Paws::ServerlessRepo>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCloudFormationTemplate on the
L<AWSServerlessApplicationRepository|Paws::ServerlessRepo> service. Use the attributes of this class
as arguments to method CreateCloudFormationTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCloudFormationTemplate.

=head1 SYNOPSIS

    my $serverlessrepo = Paws->service('ServerlessRepo');
    my $CreateCloudFormationTemplateResponse =
      $serverlessrepo->CreateCloudFormationTemplate(
      ApplicationId   => 'My__string',
      SemanticVersion => 'My__string',    # OPTIONAL
      );

    # Results:
    my $ApplicationId  = $CreateCloudFormationTemplateResponse->ApplicationId;
    my $CreationTime   = $CreateCloudFormationTemplateResponse->CreationTime;
    my $ExpirationTime = $CreateCloudFormationTemplateResponse->ExpirationTime;
    my $SemanticVersion =
      $CreateCloudFormationTemplateResponse->SemanticVersion;
    my $Status      = $CreateCloudFormationTemplateResponse->Status;
    my $TemplateId  = $CreateCloudFormationTemplateResponse->TemplateId;
    my $TemplateUrl = $CreateCloudFormationTemplateResponse->TemplateUrl;

# Returns a L<Paws::ServerlessRepo::CreateCloudFormationTemplateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/serverlessrepo/CreateCloudFormationTemplate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The Amazon Resource Name (ARN) of the application.



=head2 SemanticVersion => Str

The semantic version of the application:

https://semver.org/ (https://semver.org/)




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCloudFormationTemplate in L<Paws::ServerlessRepo>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

