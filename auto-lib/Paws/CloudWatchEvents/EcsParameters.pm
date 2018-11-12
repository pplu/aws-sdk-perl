package Paws::CloudWatchEvents::EcsParameters;
  use Moose;
  has Group => (is => 'ro', isa => 'Str');
  has LaunchType => (is => 'ro', isa => 'Str');
  has NetworkConfiguration => (is => 'ro', isa => 'Paws::CloudWatchEvents::NetworkConfiguration');
  has PlatformVersion => (is => 'ro', isa => 'Str');
  has TaskCount => (is => 'ro', isa => 'Int');
  has TaskDefinitionArn => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::EcsParameters

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudWatchEvents::EcsParameters object:

  $service_obj->Method(Att1 => { Group => $value, ..., TaskDefinitionArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudWatchEvents::EcsParameters object:

  $result = $service_obj->Method(...);
  $result->Att1->Group

=head1 DESCRIPTION

The custom parameters to be used when the target is an Amazon ECS task.

=head1 ATTRIBUTES


=head2 Group => Str

  Specifies an ECS task group for the task. The maximum length is 255
characters.


=head2 LaunchType => Str

  Specifies the launch type on which your task is running. The launch
type that you specify here must match one of the launch type
(compatibilities) of the target task. The C<FARGATE> value is supported
only in the Regions where AWS Fargate with Amazon ECS is supported. For
more information, see AWS Fargate on Amazon ECS
(http://docs.aws.amazon.com/AmazonECS/latest/developerguide/AWS-Fargate.html)
in the I<Amazon Elastic Container Service Developer Guide>.


=head2 NetworkConfiguration => L<Paws::CloudWatchEvents::NetworkConfiguration>

  Use this structure if the ECS task uses the C<awsvpc> network mode.
This structure specifies the VPC subnets and security groups associated
with the task, and whether a public IP address is to be used. This
structure is required if C<LaunchType> is C<FARGATE> because the
C<awsvpc> mode is required for Fargate tasks.

If you specify C<NetworkConfiguration> when the target ECS task does
not use the C<awsvpc> network mode, the task fails.


=head2 PlatformVersion => Str

  Specifies the platform version for the task. Specify only the numeric
portion of the platform version, such as C<1.1.0>.

This structure is used only if C<LaunchType> is C<FARGATE>. For more
information about valid platform versions, see AWS Fargate Platform
Versions
(http://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html)
in the I<Amazon Elastic Container Service Developer Guide>.


=head2 TaskCount => Int

  The number of tasks to create based on C<TaskDefinition>. The default
is 1.


=head2 B<REQUIRED> TaskDefinitionArn => Str

  The ARN of the task definition to use if the event target is an Amazon
ECS task.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudWatchEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

