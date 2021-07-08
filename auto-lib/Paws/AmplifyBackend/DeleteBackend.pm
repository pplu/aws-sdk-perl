
package Paws::AmplifyBackend::DeleteBackend;
  use Moose;
  has AppId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'appId', required => 1);
  has BackendEnvironmentName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'backendEnvironmentName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteBackend');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/backend/{appId}/environments/{backendEnvironmentName}/remove');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AmplifyBackend::DeleteBackendResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AmplifyBackend::DeleteBackend - Arguments for method DeleteBackend on L<Paws::AmplifyBackend>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteBackend on the
L<AmplifyBackend|Paws::AmplifyBackend> service. Use the attributes of this class
as arguments to method DeleteBackend.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteBackend.

=head1 SYNOPSIS

    my $amplifybackend = Paws->service('AmplifyBackend');
    my $DeleteBackendResponse = $amplifybackend->DeleteBackend(
      AppId                  => 'My__string',
      BackendEnvironmentName => 'My__string',

    );

    # Results:
    my $AppId                  = $DeleteBackendResponse->AppId;
    my $BackendEnvironmentName = $DeleteBackendResponse->BackendEnvironmentName;
    my $Error                  = $DeleteBackendResponse->Error;
    my $JobId                  = $DeleteBackendResponse->JobId;
    my $Operation              = $DeleteBackendResponse->Operation;
    my $Status                 = $DeleteBackendResponse->Status;

    # Returns a L<Paws::AmplifyBackend::DeleteBackendResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/amplifybackend/DeleteBackend>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppId => Str

The app ID.



=head2 B<REQUIRED> BackendEnvironmentName => Str

The name of the backend environment.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteBackend in L<Paws::AmplifyBackend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

