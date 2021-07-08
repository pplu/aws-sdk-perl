
package Paws::Finspace::UpdateEnvironment;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has EnvironmentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'environmentId', required => 1);
  has FederationMode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'federationMode');
  has FederationParameters => (is => 'ro', isa => 'Paws::Finspace::FederationParameters', traits => ['NameInRequest'], request_name => 'federationParameters');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateEnvironment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/environment/{environmentId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Finspace::UpdateEnvironmentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Finspace::UpdateEnvironment - Arguments for method UpdateEnvironment on L<Paws::Finspace>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateEnvironment on the
L<FinSpace User Environment Management service|Paws::Finspace> service. Use the attributes of this class
as arguments to method UpdateEnvironment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateEnvironment.

=head1 SYNOPSIS

    my $finspace = Paws->service('Finspace');
    my $UpdateEnvironmentResponse = $finspace->UpdateEnvironment(
      EnvironmentId        => 'MyIdType',
      Description          => 'MyDescription',    # OPTIONAL
      FederationMode       => 'FEDERATED',        # OPTIONAL
      FederationParameters => {
        ApplicationCallBackURL => 'Myurl',        # min: 1, max: 1000; OPTIONAL
        AttributeMap           => {
          'MyFederationAttributeKey' =>
            'Myurl',  # key: min: 1, max: 32, value: min: 1, max: 1000; OPTIONAL
        },    # OPTIONAL
        FederationProviderName =>
          'MyFederationProviderName',    # min: 1, max: 32; OPTIONAL
        FederationURN        => 'Myurn', # min: 1, max: 255; OPTIONAL
        SamlMetadataDocument =>
          'MySamlMetadataDocument',      # min: 1000, max: 10000000; OPTIONAL
        SamlMetadataURL => 'Myurl',      # min: 1, max: 1000; OPTIONAL
      },    # OPTIONAL
      Name => 'MyEnvironmentName',    # OPTIONAL
    );

    # Results:
    my $Environment = $UpdateEnvironmentResponse->Environment;

    # Returns a L<Paws::Finspace::UpdateEnvironmentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/finspace/UpdateEnvironment>

=head1 ATTRIBUTES


=head2 Description => Str

The description of the environment.



=head2 B<REQUIRED> EnvironmentId => Str

The identifier of the FinSpace environment.



=head2 FederationMode => Str

Authentication mode for the environment.

=over

=item *

C<FEDERATED> - Users access FinSpace through Single Sign On (SSO) via
your Identity provider.

=item *

C<LOCAL> - Users access FinSpace via email and password managed within
the FinSpace environment.

=back


Valid values are: C<"FEDERATED">, C<"LOCAL">

=head2 FederationParameters => L<Paws::Finspace::FederationParameters>





=head2 Name => Str

The name of the environment.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateEnvironment in L<Paws::Finspace>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

