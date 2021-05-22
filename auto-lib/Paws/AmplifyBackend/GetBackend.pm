
package Paws::AmplifyBackend::GetBackend;
  use Moose;
  has AppId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'appId', required => 1);
  has BackendEnvironmentName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'backendEnvironmentName');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetBackend');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/backend/{appId}/details');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AmplifyBackend::GetBackendResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AmplifyBackend::GetBackend - Arguments for method GetBackend on L<Paws::AmplifyBackend>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetBackend on the
L<AmplifyBackend|Paws::AmplifyBackend> service. Use the attributes of this class
as arguments to method GetBackend.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetBackend.

=head1 SYNOPSIS

    my $amplifybackend = Paws->service('AmplifyBackend');
    my $GetBackendResponse = $amplifybackend->GetBackend(
      AppId                  => 'My__string',
      BackendEnvironmentName => 'My__string',    # OPTIONAL
    );

    # Results:
    my $AmplifyMetaConfig      = $GetBackendResponse->AmplifyMetaConfig;
    my $AppId                  = $GetBackendResponse->AppId;
    my $AppName                = $GetBackendResponse->AppName;
    my $BackendEnvironmentList = $GetBackendResponse->BackendEnvironmentList;
    my $BackendEnvironmentName = $GetBackendResponse->BackendEnvironmentName;
    my $Error                  = $GetBackendResponse->Error;

    # Returns a L<Paws::AmplifyBackend::GetBackendResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/amplifybackend/GetBackend>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppId => Str

The app ID.



=head2 BackendEnvironmentName => Str

The name of the backend environment.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetBackend in L<Paws::AmplifyBackend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

