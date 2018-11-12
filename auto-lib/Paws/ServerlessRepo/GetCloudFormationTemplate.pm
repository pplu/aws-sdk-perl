
package Paws::ServerlessRepo::GetCloudFormationTemplate;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'applicationId', required => 1);
  has TemplateId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'templateId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetCloudFormationTemplate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{applicationId}/templates/{templateId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServerlessRepo::GetCloudFormationTemplateResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServerlessRepo::GetCloudFormationTemplate - Arguments for method GetCloudFormationTemplate on L<Paws::ServerlessRepo>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetCloudFormationTemplate on the
L<AWSServerlessApplicationRepository|Paws::ServerlessRepo> service. Use the attributes of this class
as arguments to method GetCloudFormationTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetCloudFormationTemplate.

=head1 SYNOPSIS

    my $serverlessrepo = Paws->service('ServerlessRepo');
    my $GetCloudFormationTemplateResponse =
      $serverlessrepo->GetCloudFormationTemplate(
      ApplicationId => 'My__string',
      TemplateId    => 'My__string',

      );

    # Results:
    my $ApplicationId   = $GetCloudFormationTemplateResponse->ApplicationId;
    my $CreationTime    = $GetCloudFormationTemplateResponse->CreationTime;
    my $ExpirationTime  = $GetCloudFormationTemplateResponse->ExpirationTime;
    my $SemanticVersion = $GetCloudFormationTemplateResponse->SemanticVersion;
    my $Status          = $GetCloudFormationTemplateResponse->Status;
    my $TemplateId      = $GetCloudFormationTemplateResponse->TemplateId;
    my $TemplateUrl     = $GetCloudFormationTemplateResponse->TemplateUrl;

  # Returns a L<Paws::ServerlessRepo::GetCloudFormationTemplateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/serverlessrepo/GetCloudFormationTemplate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The Amazon Resource Name (ARN) of the application.



=head2 B<REQUIRED> TemplateId => Str

The UUID returned by CreateCloudFormationTemplate.

Pattern:
[0-9a-fA-F]{8}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{12}




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetCloudFormationTemplate in L<Paws::ServerlessRepo>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

