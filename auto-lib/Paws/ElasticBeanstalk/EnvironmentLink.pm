package Paws::ElasticBeanstalk::EnvironmentLink;
  use Moose;
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has LinkName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::EnvironmentLink

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElasticBeanstalk::EnvironmentLink object:

  $service_obj->Method(Att1 => { EnvironmentName => $value, ..., LinkName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElasticBeanstalk::EnvironmentLink object:

  $result = $service_obj->Method(...);
  $result->Att1->EnvironmentName

=head1 DESCRIPTION

A link to another environment, defined in the environment's manifest.
Links provide connection information in system properties that can be
used to connect to another environment in the same group. See
Environment Manifest (env.yaml)
(http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/environment-cfg-manifest.html)
for details.

=head1 ATTRIBUTES


=head2 EnvironmentName => Str

  The name of the linked environment (the dependency).


=head2 LinkName => Str

  The name of the link.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElasticBeanstalk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

