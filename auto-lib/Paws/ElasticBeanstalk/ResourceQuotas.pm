# Generated from default/object.tt
package Paws::ElasticBeanstalk::ResourceQuotas;
  use Moo;
  use Types::Standard qw//;
  use Paws::ElasticBeanstalk::Types qw/ElasticBeanstalk_ResourceQuota/;
  has ApplicationQuota => (is => 'ro', isa => ElasticBeanstalk_ResourceQuota);
  has ApplicationVersionQuota => (is => 'ro', isa => ElasticBeanstalk_ResourceQuota);
  has ConfigurationTemplateQuota => (is => 'ro', isa => ElasticBeanstalk_ResourceQuota);
  has CustomPlatformQuota => (is => 'ro', isa => ElasticBeanstalk_ResourceQuota);
  has EnvironmentQuota => (is => 'ro', isa => ElasticBeanstalk_ResourceQuota);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ApplicationVersionQuota' => {
                                              'class' => 'Paws::ElasticBeanstalk::ResourceQuota',
                                              'type' => 'ElasticBeanstalk_ResourceQuota'
                                            },
               'ConfigurationTemplateQuota' => {
                                                 'class' => 'Paws::ElasticBeanstalk::ResourceQuota',
                                                 'type' => 'ElasticBeanstalk_ResourceQuota'
                                               },
               'CustomPlatformQuota' => {
                                          'class' => 'Paws::ElasticBeanstalk::ResourceQuota',
                                          'type' => 'ElasticBeanstalk_ResourceQuota'
                                        },
               'EnvironmentQuota' => {
                                       'class' => 'Paws::ElasticBeanstalk::ResourceQuota',
                                       'type' => 'ElasticBeanstalk_ResourceQuota'
                                     },
               'ApplicationQuota' => {
                                       'class' => 'Paws::ElasticBeanstalk::ResourceQuota',
                                       'type' => 'ElasticBeanstalk_ResourceQuota'
                                     }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::ResourceQuotas

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElasticBeanstalk::ResourceQuotas object:

  $service_obj->Method(Att1 => { ApplicationQuota => $value, ..., EnvironmentQuota => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElasticBeanstalk::ResourceQuotas object:

  $result = $service_obj->Method(...);
  $result->Att1->ApplicationQuota

=head1 DESCRIPTION

A set of per-resource AWS Elastic Beanstalk quotas associated with an
AWS account. They reflect Elastic Beanstalk resource limits for this
account.

=head1 ATTRIBUTES


=head2 ApplicationQuota => ElasticBeanstalk_ResourceQuota

  The quota for applications in the AWS account.


=head2 ApplicationVersionQuota => ElasticBeanstalk_ResourceQuota

  The quota for application versions in the AWS account.


=head2 ConfigurationTemplateQuota => ElasticBeanstalk_ResourceQuota

  The quota for configuration templates in the AWS account.


=head2 CustomPlatformQuota => ElasticBeanstalk_ResourceQuota

  The quota for custom platforms in the AWS account.


=head2 EnvironmentQuota => ElasticBeanstalk_ResourceQuota

  The quota for environments in the AWS account.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElasticBeanstalk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

