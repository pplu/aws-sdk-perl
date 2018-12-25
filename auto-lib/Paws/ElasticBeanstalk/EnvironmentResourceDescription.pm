package Paws::ElasticBeanstalk::EnvironmentResourceDescription;
  use Moose;
  has AutoScalingGroups => (is => 'ro', isa => 'ArrayRef[Paws::ElasticBeanstalk::AutoScalingGroup]');
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has Instances => (is => 'ro', isa => 'ArrayRef[Paws::ElasticBeanstalk::Instance]');
  has LaunchConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::ElasticBeanstalk::LaunchConfiguration]');
  has LaunchTemplates => (is => 'ro', isa => 'ArrayRef[Paws::ElasticBeanstalk::LaunchTemplate]');
  has LoadBalancers => (is => 'ro', isa => 'ArrayRef[Paws::ElasticBeanstalk::LoadBalancer]');
  has Queues => (is => 'ro', isa => 'ArrayRef[Paws::ElasticBeanstalk::Queue]');
  has Triggers => (is => 'ro', isa => 'ArrayRef[Paws::ElasticBeanstalk::Trigger]');
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


=head2 AutoScalingGroups => ArrayRef[L<Paws::ElasticBeanstalk::AutoScalingGroup>]

  The C<AutoScalingGroups> used by this environment.


=head2 EnvironmentName => Str

  The name of the environment.


=head2 Instances => ArrayRef[L<Paws::ElasticBeanstalk::Instance>]

  The Amazon EC2 instances used by this environment.


=head2 LaunchConfigurations => ArrayRef[L<Paws::ElasticBeanstalk::LaunchConfiguration>]

  The Auto Scaling launch configurations in use by this environment.


=head2 LaunchTemplates => ArrayRef[L<Paws::ElasticBeanstalk::LaunchTemplate>]

  The Amazon EC2 launch templates in use by this environment.


=head2 LoadBalancers => ArrayRef[L<Paws::ElasticBeanstalk::LoadBalancer>]

  The LoadBalancers in use by this environment.


=head2 Queues => ArrayRef[L<Paws::ElasticBeanstalk::Queue>]

  The queues used by this environment.


=head2 Triggers => ArrayRef[L<Paws::ElasticBeanstalk::Trigger>]

  The C<AutoScaling> triggers in use by this environment.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElasticBeanstalk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

