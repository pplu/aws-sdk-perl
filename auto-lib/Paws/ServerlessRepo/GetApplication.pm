
package Paws::ServerlessRepo::GetApplication;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'applicationId', required => 1);
  has SemanticVersion => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'semanticVersion');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetApplication');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{applicationId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServerlessRepo::GetApplicationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServerlessRepo::GetApplication - Arguments for method GetApplication on L<Paws::ServerlessRepo>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetApplication on the
L<AWSServerlessApplicationRepository|Paws::ServerlessRepo> service. Use the attributes of this class
as arguments to method GetApplication.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetApplication.

=head1 SYNOPSIS

    my $serverlessrepo = Paws->service('ServerlessRepo');
    my $GetApplicationResponse = $serverlessrepo->GetApplication(
      ApplicationId   => 'My__string',
      SemanticVersion => 'My__string',    # OPTIONAL
    );

    # Results:
    my $ApplicationId = $GetApplicationResponse->ApplicationId;
    my $Author        = $GetApplicationResponse->Author;
    my $CreationTime  = $GetApplicationResponse->CreationTime;
    my $Description   = $GetApplicationResponse->Description;
    my $HomePageUrl   = $GetApplicationResponse->HomePageUrl;
    my $Labels        = $GetApplicationResponse->Labels;
    my $LicenseUrl    = $GetApplicationResponse->LicenseUrl;
    my $Name          = $GetApplicationResponse->Name;
    my $ReadmeUrl     = $GetApplicationResponse->ReadmeUrl;
    my $SpdxLicenseId = $GetApplicationResponse->SpdxLicenseId;
    my $Version       = $GetApplicationResponse->Version;

    # Returns a L<Paws::ServerlessRepo::GetApplicationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/serverlessrepo/GetApplication>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The Amazon Resource Name (ARN) of the application.



=head2 SemanticVersion => Str

The semantic version of the application to get.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetApplication in L<Paws::ServerlessRepo>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

