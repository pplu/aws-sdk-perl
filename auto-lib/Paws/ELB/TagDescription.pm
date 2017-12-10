package Paws::ELB::TagDescription;
  use Moose;
  has LoadBalancerName => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ELB::Tag]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELB::TagDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ELB::TagDescription object:

  $service_obj->Method(Att1 => { LoadBalancerName => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ELB::TagDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->LoadBalancerName

=head1 DESCRIPTION

The tags associated with a load balancer.

=head1 ATTRIBUTES


=head2 LoadBalancerName => Str

  The name of the load balancer.


=head2 Tags => ArrayRef[L<Paws::ELB::Tag>]

  The tags.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ELB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

