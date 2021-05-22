
package Paws::EKS::DisassociateIdentityProviderConfig;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientRequestToken');
  has ClusterName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);
  has IdentityProviderConfig => (is => 'ro', isa => 'Paws::EKS::IdentityProviderConfig', traits => ['NameInRequest'], request_name => 'identityProviderConfig', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisassociateIdentityProviderConfig');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/clusters/{name}/identity-provider-configs/disassociate');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EKS::DisassociateIdentityProviderConfigResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::DisassociateIdentityProviderConfig - Arguments for method DisassociateIdentityProviderConfig on L<Paws::EKS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisassociateIdentityProviderConfig on the
L<Amazon Elastic Kubernetes Service|Paws::EKS> service. Use the attributes of this class
as arguments to method DisassociateIdentityProviderConfig.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisassociateIdentityProviderConfig.

=head1 SYNOPSIS

    my $eks = Paws->service('EKS');
    my $DisassociateIdentityProviderConfigResponse =
      $eks->DisassociateIdentityProviderConfig(
      ClusterName            => 'MyString',
      IdentityProviderConfig => {
        Name => 'MyString',
        Type => 'MyString',

      },
      ClientRequestToken => 'MyString',    # OPTIONAL
      );

    # Results:
    my $Update = $DisassociateIdentityProviderConfigResponse->Update;

    # Returns a L<Paws::EKS::DisassociateIdentityProviderConfigResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/eks/DisassociateIdentityProviderConfig>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.



=head2 B<REQUIRED> ClusterName => Str

The name of the cluster to disassociate an identity provider from.



=head2 B<REQUIRED> IdentityProviderConfig => L<Paws::EKS::IdentityProviderConfig>

An object that represents an identity provider configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisassociateIdentityProviderConfig in L<Paws::EKS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

