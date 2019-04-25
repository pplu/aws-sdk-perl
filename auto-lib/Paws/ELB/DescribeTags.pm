
package Paws::ELB::DescribeTags;
  use Moose;
  has LoadBalancerNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTags');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ELB::DescribeTagsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeTagsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELB::DescribeTags - Arguments for method DescribeTags on L<Paws::ELB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeTags on the
L<Elastic Load Balancing|Paws::ELB> service. Use the attributes of this class
as arguments to method DescribeTags.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeTags.

=head1 SYNOPSIS

    my $elasticloadbalancing = Paws->service('ELB');
    # To describe the tags for a load balancer
    # This example describes the tags for the specified load balancer.
    my $DescribeTagsOutput = $elasticloadbalancing->DescribeTags(
      {
        'LoadBalancerNames' => ['my-load-balancer']
      }
    );

    # Results:
    my $TagDescriptions = $DescribeTagsOutput->TagDescriptions;

    # Returns a L<Paws::ELB::DescribeTagsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing/DescribeTags>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LoadBalancerNames => ArrayRef[Str|Undef]

The names of the load balancers.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeTags in L<Paws::ELB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

