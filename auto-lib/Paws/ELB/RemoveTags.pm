
package Paws::ELB::RemoveTags;
  use Moose;
  has LoadBalancerNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ELB::TagKeyOnly]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RemoveTags');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ELB::RemoveTagsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'RemoveTagsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELB::RemoveTags - Arguments for method RemoveTags on L<Paws::ELB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RemoveTags on the
L<Elastic Load Balancing|Paws::ELB> service. Use the attributes of this class
as arguments to method RemoveTags.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RemoveTags.

=head1 SYNOPSIS

    my $elasticloadbalancing = Paws->service('ELB');
    # To remove tags from a load balancer
    # This example removes the specified tag from the specified load balancer.
    my $RemoveTagsOutput = $elasticloadbalancing->RemoveTags(
      {
        'LoadBalancerNames' => ['my-load-balancer'],
        'Tags'              => [

          {
            'Key' => 'project'
          }
        ]
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing/RemoveTags>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LoadBalancerNames => ArrayRef[Str|Undef]

The name of the load balancer. You can specify a maximum of one load
balancer name.



=head2 B<REQUIRED> Tags => ArrayRef[L<Paws::ELB::TagKeyOnly>]

The list of tag keys to remove.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RemoveTags in L<Paws::ELB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

