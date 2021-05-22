
package Paws::EKS::AssociateEncryptionConfig;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientRequestToken');
  has ClusterName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);
  has EncryptionConfig => (is => 'ro', isa => 'ArrayRef[Paws::EKS::EncryptionConfig]', traits => ['NameInRequest'], request_name => 'encryptionConfig', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateEncryptionConfig');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/clusters/{name}/encryption-config/associate');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EKS::AssociateEncryptionConfigResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::AssociateEncryptionConfig - Arguments for method AssociateEncryptionConfig on L<Paws::EKS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateEncryptionConfig on the
L<Amazon Elastic Kubernetes Service|Paws::EKS> service. Use the attributes of this class
as arguments to method AssociateEncryptionConfig.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateEncryptionConfig.

=head1 SYNOPSIS

    my $eks = Paws->service('EKS');
    my $AssociateEncryptionConfigResponse = $eks->AssociateEncryptionConfig(
      ClusterName      => 'MyString',
      EncryptionConfig => [
        {
          Provider  => { KeyArn => 'MyString', },    # OPTIONAL
          Resources => [ 'MyString', ... ],          # OPTIONAL
        },
        ...
      ],
      ClientRequestToken => 'MyString',              # OPTIONAL
    );

    # Results:
    my $Update = $AssociateEncryptionConfigResponse->Update;

    # Returns a L<Paws::EKS::AssociateEncryptionConfigResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/eks/AssociateEncryptionConfig>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

The client request token you are using with the encryption
configuration.



=head2 B<REQUIRED> ClusterName => Str

The name of the cluster that you are associating with encryption
configuration.



=head2 B<REQUIRED> EncryptionConfig => ArrayRef[L<Paws::EKS::EncryptionConfig>]

The configuration you are using for encryption.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateEncryptionConfig in L<Paws::EKS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

