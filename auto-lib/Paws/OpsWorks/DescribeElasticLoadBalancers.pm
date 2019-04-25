
package Paws::OpsWorks::DescribeElasticLoadBalancers;
  use Moose;
  has LayerIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has StackId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeElasticLoadBalancers');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpsWorks::DescribeElasticLoadBalancersResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::DescribeElasticLoadBalancers - Arguments for method DescribeElasticLoadBalancers on L<Paws::OpsWorks>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeElasticLoadBalancers on the
L<AWS OpsWorks|Paws::OpsWorks> service. Use the attributes of this class
as arguments to method DescribeElasticLoadBalancers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeElasticLoadBalancers.

=head1 SYNOPSIS

    my $opsworks = Paws->service('OpsWorks');
    my $DescribeElasticLoadBalancersResult =
      $opsworks->DescribeElasticLoadBalancers(
      LayerIds => [ 'MyString', ... ],    # OPTIONAL
      StackId => 'MyString',              # OPTIONAL
      );

    # Results:
    my $ElasticLoadBalancers =
      $DescribeElasticLoadBalancersResult->ElasticLoadBalancers;

    # Returns a L<Paws::OpsWorks::DescribeElasticLoadBalancersResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/opsworks/DescribeElasticLoadBalancers>

=head1 ATTRIBUTES


=head2 LayerIds => ArrayRef[Str|Undef]

A list of layer IDs. The action describes the Elastic Load Balancing
instances for the specified layers.



=head2 StackId => Str

A stack ID. The action describes the stack's Elastic Load Balancing
instances.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeElasticLoadBalancers in L<Paws::OpsWorks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

