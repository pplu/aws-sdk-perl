# Generated from default/object.tt
package Paws::ElasticBeanstalk::EnvironmentResourceDescription;
  use Moo;
  use Types::Standard qw/ArrayRef Str/;
  use Paws::ElasticBeanstalk::Types qw/ElasticBeanstalk_AutoScalingGroup ElasticBeanstalk_LaunchTemplate ElasticBeanstalk_Instance ElasticBeanstalk_Trigger ElasticBeanstalk_Queue ElasticBeanstalk_LoadBalancer ElasticBeanstalk_LaunchConfiguration/;
  has AutoScalingGroups => (is => 'ro', isa => ArrayRef[ElasticBeanstalk_AutoScalingGroup]);
  has EnvironmentName => (is => 'ro', isa => Str);
  has Instances => (is => 'ro', isa => ArrayRef[ElasticBeanstalk_Instance]);
  has LaunchConfigurations => (is => 'ro', isa => ArrayRef[ElasticBeanstalk_LaunchConfiguration]);
  has LaunchTemplates => (is => 'ro', isa => ArrayRef[ElasticBeanstalk_LaunchTemplate]);
  has LoadBalancers => (is => 'ro', isa => ArrayRef[ElasticBeanstalk_LoadBalancer]);
  has Queues => (is => 'ro', isa => ArrayRef[ElasticBeanstalk_Queue]);
  has Triggers => (is => 'ro', isa => ArrayRef[ElasticBeanstalk_Trigger]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Triggers' => {
                               'class' => 'Paws::ElasticBeanstalk::Trigger',
                               'type' => 'ArrayRef[ElasticBeanstalk_Trigger]'
                             },
               'LaunchConfigurations' => {
                                           'class' => 'Paws::ElasticBeanstalk::LaunchConfiguration',
                                           'type' => 'ArrayRef[ElasticBeanstalk_LaunchConfiguration]'
                                         },
               'EnvironmentName' => {
                                      'type' => 'Str'
                                    },
               'AutoScalingGroups' => {
                                        'class' => 'Paws::ElasticBeanstalk::AutoScalingGroup',
                                        'type' => 'ArrayRef[ElasticBeanstalk_AutoScalingGroup]'
                                      },
               'Queues' => {
                             'class' => 'Paws::ElasticBeanstalk::Queue',
                             'type' => 'ArrayRef[ElasticBeanstalk_Queue]'
                           },
               'LoadBalancers' => {
                                    'class' => 'Paws::ElasticBeanstalk::LoadBalancer',
                                    'type' => 'ArrayRef[ElasticBeanstalk_LoadBalancer]'
                                  },
               'Instances' => {
                                'class' => 'Paws::ElasticBeanstalk::Instance',
                                'type' => 'ArrayRef[ElasticBeanstalk_Instance]'
                              },
               'LaunchTemplates' => {
                                      'class' => 'Paws::ElasticBeanstalk::LaunchTemplate',
                                      'type' => 'ArrayRef[ElasticBeanstalk_LaunchTemplate]'
                                    }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::EnvironmentResourceDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElasticBeanstalk::EnvironmentResourceDescription object:

  $service_obj->Method(Att1 => { AutoScalingGroups => $value, ..., Triggers => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElasticBeanstalk::EnvironmentResourceDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->AutoScalingGroups

=head1 DESCRIPTION

Describes the AWS resources in use by this environment. This data is
live.

=head1 ATTRIBUTES


=head2 AutoScalingGroups => ArrayRef[ElasticBeanstalk_AutoScalingGroup]

  The C<AutoScalingGroups> used by this environment.


=head2 EnvironmentName => Str

  The name of the environment.


=head2 Instances => ArrayRef[ElasticBeanstalk_Instance]

  The Amazon EC2 instances used by this environment.


=head2 LaunchConfigurations => ArrayRef[ElasticBeanstalk_LaunchConfiguration]

  The Auto Scaling launch configurations in use by this environment.


=head2 LaunchTemplates => ArrayRef[ElasticBeanstalk_LaunchTemplate]

  The Amazon EC2 launch templates in use by this environment.


=head2 LoadBalancers => ArrayRef[ElasticBeanstalk_LoadBalancer]

  The LoadBalancers in use by this environment.


=head2 Queues => ArrayRef[ElasticBeanstalk_Queue]

  The queues used by this environment.


=head2 Triggers => ArrayRef[ElasticBeanstalk_Trigger]

  The C<AutoScaling> triggers in use by this environment.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElasticBeanstalk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

