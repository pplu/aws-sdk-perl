
package Paws::EKS::DeleteCluster;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteCluster');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/clusters/{name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EKS::DeleteClusterResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::DeleteCluster - Arguments for method DeleteCluster on L<Paws::EKS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteCluster on the
L<Amazon Elastic Container Service for Kubernetes|Paws::EKS> service. Use the attributes of this class
as arguments to method DeleteCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteCluster.

=head1 SYNOPSIS

    my $eks = Paws->service('EKS');
    my $DeleteClusterResponse = $eks->DeleteCluster(
      Name => 'MyString',

    );

    # Results:
    my $Cluster = $DeleteClusterResponse->Cluster;

    # Returns a L<Paws::EKS::DeleteClusterResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/eks/DeleteCluster>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the cluster to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteCluster in L<Paws::EKS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

