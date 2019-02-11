
package Paws::EKS::UpdateClusterVersion;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientRequestToken');
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);
  has Version => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'version', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateClusterVersion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/clusters/{name}/updates');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EKS::UpdateClusterVersionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::UpdateClusterVersion - Arguments for method UpdateClusterVersion on L<Paws::EKS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateClusterVersion on the
L<Amazon Elastic Container Service for Kubernetes|Paws::EKS> service. Use the attributes of this class
as arguments to method UpdateClusterVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateClusterVersion.

=head1 SYNOPSIS

    my $eks = Paws->service('EKS');
    my $UpdateClusterVersionResponse = $eks->UpdateClusterVersion(
      Name               => 'MyString',
      Version            => 'MyString',
      ClientRequestToken => 'MyString',    # OPTIONAL
    );

    # Results:
    my $Update = $UpdateClusterVersionResponse->Update;

    # Returns a L<Paws::EKS::UpdateClusterVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/eks/UpdateClusterVersion>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.



=head2 B<REQUIRED> Name => Str

The name of the Amazon EKS cluster to update.



=head2 B<REQUIRED> Version => Str

The desired Kubernetes version following a successful update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateClusterVersion in L<Paws::EKS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

