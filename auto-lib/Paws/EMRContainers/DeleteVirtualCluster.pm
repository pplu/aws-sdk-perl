
package Paws::EMRContainers::DeleteVirtualCluster;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'virtualClusterId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteVirtualCluster');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/virtualclusters/{virtualClusterId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EMRContainers::DeleteVirtualClusterResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMRContainers::DeleteVirtualCluster - Arguments for method DeleteVirtualCluster on L<Paws::EMRContainers>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteVirtualCluster on the
L<Amazon EMR Containers|Paws::EMRContainers> service. Use the attributes of this class
as arguments to method DeleteVirtualCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteVirtualCluster.

=head1 SYNOPSIS

    my $emr-containers = Paws->service('EMRContainers');
    my $DeleteVirtualClusterResponse = $emr -containers->DeleteVirtualCluster(
      Id => 'MyResourceIdString',

    );

    # Results:
    my $Id = $DeleteVirtualClusterResponse->Id;

    # Returns a L<Paws::EMRContainers::DeleteVirtualClusterResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/emr-containers/DeleteVirtualCluster>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The ID of the virtual cluster that will be deleted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteVirtualCluster in L<Paws::EMRContainers>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

