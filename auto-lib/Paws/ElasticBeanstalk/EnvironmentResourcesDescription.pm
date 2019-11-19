# Generated from default/object.tt
package Paws::ElasticBeanstalk::EnvironmentResourcesDescription;
  use Moo;
  use Types::Standard qw//;
  use Paws::ElasticBeanstalk::Types qw/ElasticBeanstalk_LoadBalancerDescription/;
  has LoadBalancer => (is => 'ro', isa => ElasticBeanstalk_LoadBalancerDescription);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LoadBalancer' => {
                                   'type' => 'ElasticBeanstalk_LoadBalancerDescription',
                                   'class' => 'Paws::ElasticBeanstalk::LoadBalancerDescription'
                                 }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::EnvironmentResourcesDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElasticBeanstalk::EnvironmentResourcesDescription object:

  $service_obj->Method(Att1 => { LoadBalancer => $value, ..., LoadBalancer => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElasticBeanstalk::EnvironmentResourcesDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->LoadBalancer

=head1 DESCRIPTION

Describes the AWS resources in use by this environment. This data is
not live data.

=head1 ATTRIBUTES


=head2 LoadBalancer => ElasticBeanstalk_LoadBalancerDescription

  Describes the LoadBalancer.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElasticBeanstalk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

