
package Paws::EKS::DescribeIdentityProviderConfig;
  use Moose;
  has ClusterName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);
  has IdentityProviderConfig => (is => 'ro', isa => 'Paws::EKS::IdentityProviderConfig', traits => ['NameInRequest'], request_name => 'identityProviderConfig', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeIdentityProviderConfig');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/clusters/{name}/identity-provider-configs/describe');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EKS::DescribeIdentityProviderConfigResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::DescribeIdentityProviderConfig - Arguments for method DescribeIdentityProviderConfig on L<Paws::EKS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeIdentityProviderConfig on the
L<Amazon Elastic Kubernetes Service|Paws::EKS> service. Use the attributes of this class
as arguments to method DescribeIdentityProviderConfig.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeIdentityProviderConfig.

=head1 SYNOPSIS

    my $eks = Paws->service('EKS');
    my $DescribeIdentityProviderConfigResponse =
      $eks->DescribeIdentityProviderConfig(
      ClusterName            => 'MyString',
      IdentityProviderConfig => {
        Name => 'MyString',
        Type => 'MyString',

      },

      );

    # Results:
    my $IdentityProviderConfig =
      $DescribeIdentityProviderConfigResponse->IdentityProviderConfig;

    # Returns a L<Paws::EKS::DescribeIdentityProviderConfigResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/eks/DescribeIdentityProviderConfig>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterName => Str

The cluster name that the identity provider configuration is associated
to.



=head2 B<REQUIRED> IdentityProviderConfig => L<Paws::EKS::IdentityProviderConfig>

An object that represents an identity provider configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeIdentityProviderConfig in L<Paws::EKS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

