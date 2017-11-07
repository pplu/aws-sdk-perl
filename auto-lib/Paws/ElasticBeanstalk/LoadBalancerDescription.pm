package Paws::ElasticBeanstalk::LoadBalancerDescription;
  use Moose;
  has Domain => (is => 'ro', isa => 'Str');
  has Listeners => (is => 'ro', isa => 'ArrayRef[Paws::ElasticBeanstalk::Listener]');
  has LoadBalancerName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::LoadBalancerDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElasticBeanstalk::LoadBalancerDescription object:

  $service_obj->Method(Att1 => { Domain => $value, ..., LoadBalancerName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElasticBeanstalk::LoadBalancerDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->Domain

=head1 DESCRIPTION

Describes the details of a LoadBalancer.

=head1 ATTRIBUTES


=head2 Domain => Str

  The domain name of the LoadBalancer.


=head2 Listeners => ArrayRef[L<Paws::ElasticBeanstalk::Listener>]

  A list of Listeners used by the LoadBalancer.


=head2 LoadBalancerName => Str

  The name of the LoadBalancer.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElasticBeanstalk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

