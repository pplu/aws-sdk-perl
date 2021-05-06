
package Paws::EKS::DescribeNodegroup;
  use Moose;
  has ClusterName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);
  has NodegroupName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'nodegroupName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeNodegroup');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/clusters/{name}/node-groups/{nodegroupName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EKS::DescribeNodegroupResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::DescribeNodegroup - Arguments for method DescribeNodegroup on L<Paws::EKS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeNodegroup on the
L<Amazon Elastic Kubernetes Service|Paws::EKS> service. Use the attributes of this class
as arguments to method DescribeNodegroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeNodegroup.

=head1 SYNOPSIS

    my $eks = Paws->service('EKS');
    my $DescribeNodegroupResponse = $eks->DescribeNodegroup(
      ClusterName   => 'MyString',
      NodegroupName => 'MyString',

    );

    # Results:
    my $Nodegroup = $DescribeNodegroupResponse->Nodegroup;

    # Returns a L<Paws::EKS::DescribeNodegroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/eks/DescribeNodegroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterName => Str

The name of the Amazon EKS cluster associated with the node group.



=head2 B<REQUIRED> NodegroupName => Str

The name of the node group to describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeNodegroup in L<Paws::EKS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

