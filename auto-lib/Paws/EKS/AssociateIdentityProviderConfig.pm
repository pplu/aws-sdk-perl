
package Paws::EKS::AssociateIdentityProviderConfig;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientRequestToken');
  has ClusterName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);
  has Oidc => (is => 'ro', isa => 'Paws::EKS::OidcIdentityProviderConfigRequest', traits => ['NameInRequest'], request_name => 'oidc', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::EKS::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateIdentityProviderConfig');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/clusters/{name}/identity-provider-configs/associate');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EKS::AssociateIdentityProviderConfigResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::AssociateIdentityProviderConfig - Arguments for method AssociateIdentityProviderConfig on L<Paws::EKS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateIdentityProviderConfig on the
L<Amazon Elastic Kubernetes Service|Paws::EKS> service. Use the attributes of this class
as arguments to method AssociateIdentityProviderConfig.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateIdentityProviderConfig.

=head1 SYNOPSIS

    my $eks = Paws->service('EKS');
    my $AssociateIdentityProviderConfigResponse =
      $eks->AssociateIdentityProviderConfig(
      ClusterName => 'MyString',
      Oidc        => {
        ClientId                   => 'MyString',
        IdentityProviderConfigName => 'MyString',
        IssuerUrl                  => 'MyString',
        GroupsClaim                => 'MyString',
        GroupsPrefix               => 'MyString',
        RequiredClaims             => {
          'MyrequiredClaimsKey' => 'MyrequiredClaimsValue'
          ,    # key: min: 1, max: 63, value: min: 1, max: 253
        },    # OPTIONAL
        UsernameClaim  => 'MyString',
        UsernamePrefix => 'MyString',
      },
      ClientRequestToken => 'MyString',    # OPTIONAL
      Tags               => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      );

    # Results:
    my $Tags   = $AssociateIdentityProviderConfigResponse->Tags;
    my $Update = $AssociateIdentityProviderConfigResponse->Update;

    # Returns a L<Paws::EKS::AssociateIdentityProviderConfigResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/eks/AssociateIdentityProviderConfig>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.



=head2 B<REQUIRED> ClusterName => Str

The name of the cluster to associate the configuration to.



=head2 B<REQUIRED> Oidc => L<Paws::EKS::OidcIdentityProviderConfigRequest>

An object that represents an OpenID Connect (OIDC) identity provider
configuration.



=head2 Tags => L<Paws::EKS::TagMap>

The metadata to apply to the configuration to assist with
categorization and organization. Each tag consists of a key and an
optional value, both of which you define.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateIdentityProviderConfig in L<Paws::EKS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

