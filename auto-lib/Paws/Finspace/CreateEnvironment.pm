
package Paws::Finspace::CreateEnvironment;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has FederationMode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'federationMode');
  has FederationParameters => (is => 'ro', isa => 'Paws::Finspace::FederationParameters', traits => ['NameInRequest'], request_name => 'federationParameters');
  has KmsKeyId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'kmsKeyId');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Finspace::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateEnvironment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/environment');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Finspace::CreateEnvironmentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Finspace::CreateEnvironment - Arguments for method CreateEnvironment on L<Paws::Finspace>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateEnvironment on the
L<FinSpace User Environment Management service|Paws::Finspace> service. Use the attributes of this class
as arguments to method CreateEnvironment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateEnvironment.

=head1 SYNOPSIS

    my $finspace = Paws->service('Finspace');
    my $CreateEnvironmentResponse = $finspace->CreateEnvironment(
      Name                 => 'MyEnvironmentName',
      Description          => 'MyDescription',       # OPTIONAL
      FederationMode       => 'FEDERATED',           # OPTIONAL
      FederationParameters => {
        ApplicationCallBackURL => 'Myurl',    # min: 1, max: 1000; OPTIONAL
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
      KmsKeyId => 'MyKmsKeyId',    # OPTIONAL
      Tags     => {
        'MyTagKey' =>
          'MyTagValue',    # key: min: 1, max: 128, value: min: 1, max: 256
      },    # OPTIONAL
    );

    # Results:
    my $EnvironmentArn = $CreateEnvironmentResponse->EnvironmentArn;
    my $EnvironmentId  = $CreateEnvironmentResponse->EnvironmentId;
    my $EnvironmentUrl = $CreateEnvironmentResponse->EnvironmentUrl;

    # Returns a L<Paws::Finspace::CreateEnvironmentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/finspace/CreateEnvironment>

=head1 ATTRIBUTES


=head2 Description => Str

The description of the FinSpace environment to be created.



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

Configuration information when authentication mode is FEDERATED.



=head2 KmsKeyId => Str

The KMS key id to encrypt your data in the FinSpace environment.



=head2 B<REQUIRED> Name => Str

The name of the FinSpace environment to be created.



=head2 Tags => L<Paws::Finspace::TagMap>

Add tags to your FinSpace environment.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateEnvironment in L<Paws::Finspace>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

