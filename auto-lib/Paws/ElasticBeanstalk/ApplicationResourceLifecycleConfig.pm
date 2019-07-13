package Paws::ElasticBeanstalk::ApplicationResourceLifecycleConfig;
  use Moose;
  has ServiceRole => (is => 'ro', isa => 'Str');
  has VersionLifecycleConfig => (is => 'ro', isa => 'Paws::ElasticBeanstalk::ApplicationVersionLifecycleConfig');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::ApplicationResourceLifecycleConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElasticBeanstalk::ApplicationResourceLifecycleConfig object:

  $service_obj->Method(Att1 => { ServiceRole => $value, ..., VersionLifecycleConfig => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElasticBeanstalk::ApplicationResourceLifecycleConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->ServiceRole

=head1 DESCRIPTION

The resource lifecycle configuration for an application. Defines
lifecycle settings for resources that belong to the application, and
the service role that Elastic Beanstalk assumes in order to apply
lifecycle settings. The version lifecycle configuration defines
lifecycle settings for application versions.

=head1 ATTRIBUTES


=head2 ServiceRole => Str

  The ARN of an IAM service role that Elastic Beanstalk has permission to
assume.

The C<ServiceRole> property is required the first time that you provide
a C<VersionLifecycleConfig> for the application in one of the
supporting calls (C<CreateApplication> or
C<UpdateApplicationResourceLifecycle>). After you provide it once, in
either one of the calls, Elastic Beanstalk persists the Service Role
with the application, and you don't need to specify it again in
subsequent C<UpdateApplicationResourceLifecycle> calls. You can,
however, specify it in subsequent calls to change the Service Role to
another value.


=head2 VersionLifecycleConfig => L<Paws::ElasticBeanstalk::ApplicationVersionLifecycleConfig>

  The application version lifecycle configuration.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElasticBeanstalk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

