package Paws::ElasticBeanstalk::ApplicationVersionLifecycleConfig;
  use Moose;
  has MaxAgeRule => (is => 'ro', isa => 'Paws::ElasticBeanstalk::MaxAgeRule');
  has MaxCountRule => (is => 'ro', isa => 'Paws::ElasticBeanstalk::MaxCountRule');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::ApplicationVersionLifecycleConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElasticBeanstalk::ApplicationVersionLifecycleConfig object:

  $service_obj->Method(Att1 => { MaxAgeRule => $value, ..., MaxCountRule => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElasticBeanstalk::ApplicationVersionLifecycleConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->MaxAgeRule

=head1 DESCRIPTION

The application version lifecycle settings for an application. Defines
the rules that Elastic Beanstalk applies to an application's versions
in order to avoid hitting the per-region limit for application
versions.

When Elastic Beanstalk deletes an application version from its
database, you can no longer deploy that version to an environment. The
source bundle remains in S3 unless you configure the rule to delete it.

=head1 ATTRIBUTES


=head2 MaxAgeRule => L<Paws::ElasticBeanstalk::MaxAgeRule>

  Specify a max age rule to restrict the length of time that application
versions are retained for an application.


=head2 MaxCountRule => L<Paws::ElasticBeanstalk::MaxCountRule>

  Specify a max count rule to restrict the number of application versions
that are retained for an application.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElasticBeanstalk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

