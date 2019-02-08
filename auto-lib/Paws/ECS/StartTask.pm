
package Paws::ECS::StartTask;
  use Moose;
  has Cluster => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cluster' );
  has ContainerInstances => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'containerInstances' , required => 1);
  has EnableECSManagedTags => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'enableECSManagedTags' );
  has Group => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'group' );
  has NetworkConfiguration => (is => 'ro', isa => 'Paws::ECS::NetworkConfiguration', traits => ['NameInRequest'], request_name => 'networkConfiguration' );
  has Overrides => (is => 'ro', isa => 'Paws::ECS::TaskOverride', traits => ['NameInRequest'], request_name => 'overrides' );
  has PropagateTags => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'propagateTags' );
  has StartedBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'startedBy' );
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ECS::Tag]', traits => ['NameInRequest'], request_name => 'tags' );
  has TaskDefinition => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'taskDefinition' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartTask');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECS::StartTaskResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::StartTask - Arguments for method StartTask on L<Paws::ECS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartTask on the
L<Amazon EC2 Container Service|Paws::ECS> service. Use the attributes of this class
as arguments to method StartTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartTask.

=head1 SYNOPSIS

    my $ecs = Paws->service('ECS');
    my $StartTaskResponse = $ecs->StartTask(
      ContainerInstances   => [ 'MyString', ... ],
      TaskDefinition       => 'MyString',
      Cluster              => 'MyString',            # OPTIONAL
      EnableECSManagedTags => 1,                     # OPTIONAL
      Group                => 'MyString',            # OPTIONAL
      NetworkConfiguration => {
        AwsvpcConfiguration => {
          Subnets => [ 'MyString', ... ],
          AssignPublicIp => 'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
          SecurityGroups => [ 'MyString', ... ],
        },    # OPTIONAL
      },    # OPTIONAL
      Overrides => {
        ContainerOverrides => [
          {
            Command     => [ 'MyString', ... ],
            Cpu         => 1,                     # OPTIONAL
            Environment => [
              {
                Name  => 'MyString',
                Value => 'MyString',
              },
              ...
            ],                                    # OPTIONAL
            Memory               => 1,            # OPTIONAL
            MemoryReservation    => 1,            # OPTIONAL
            Name                 => 'MyString',
            ResourceRequirements => [
              {
                Type  => 'GPU',                   # values: GPU
                Value => 'MyString',

              },
              ...
            ],                                    # OPTIONAL
          },
          ...
        ],                                        # OPTIONAL
        ExecutionRoleArn => 'MyString',
        TaskRoleArn      => 'MyString',
      },    # OPTIONAL
      PropagateTags => 'TASK_DEFINITION',    # OPTIONAL
      StartedBy     => 'MyString',           # OPTIONAL
      Tags          => [
        {
          Key   => 'MyTagKey',               # min: 1, max: 128; OPTIONAL
          Value => 'MyTagValue',             # max: 256; OPTIONAL
        },
        ...
      ],                                     # OPTIONAL
    );

    # Results:
    my $Failures = $StartTaskResponse->Failures;
    my $Tasks    = $StartTaskResponse->Tasks;

    # Returns a L<Paws::ECS::StartTaskResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ecs/StartTask>

=head1 ATTRIBUTES


=head2 Cluster => Str

The short name or full Amazon Resource Name (ARN) of the cluster on
which to start your task. If you do not specify a cluster, the default
cluster is assumed.



=head2 B<REQUIRED> ContainerInstances => ArrayRef[Str|Undef]

The container instance IDs or full ARN entries for the container
instances on which you would like to place your task. You can specify
up to 10 container instances.



=head2 EnableECSManagedTags => Bool

Specifies whether to enable Amazon ECS managed tags for the task. For
more information, see Tagging Your Amazon ECS Resources
(http://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-using-tags.html)
in the I<Amazon Elastic Container Service Developer Guide>.



=head2 Group => Str

The name of the task group to associate with the task. The default
value is the family name of the task definition (for example,
family:my-family-name).



=head2 NetworkConfiguration => L<Paws::ECS::NetworkConfiguration>

The VPC subnet and security group configuration for tasks that receive
their own elastic network interface by using the C<awsvpc> networking
mode.



=head2 Overrides => L<Paws::ECS::TaskOverride>

A list of container overrides in JSON format that specify the name of a
container in the specified task definition and the overrides it should
receive. You can override the default command for a container (that is
specified in the task definition or Docker image) with a C<command>
override. You can also override existing environment variables (that
are specified in the task definition or Docker image) on a container or
add new environment variables to it with an C<environment> override.

A total of 8192 characters are allowed for overrides. This limit
includes the JSON formatting characters of the override structure.



=head2 PropagateTags => Str

Specifies whether to propagate the tags from the task definition or the
service to the task. If no value is specified, the tags are not
propagated.

Valid values are: C<"TASK_DEFINITION">, C<"SERVICE">

=head2 StartedBy => Str

An optional tag specified when a task is started. For example, if you
automatically trigger a task to run a batch process job, you could
apply a unique identifier for that job to your task with the
C<startedBy> parameter. You can then identify which tasks belong to
that job by filtering the results of a ListTasks call with the
C<startedBy> value. Up to 36 letters (uppercase and lowercase),
numbers, hyphens, and underscores are allowed.

If a task is started by an Amazon ECS service, then the C<startedBy>
parameter contains the deployment ID of the service that starts it.



=head2 Tags => ArrayRef[L<Paws::ECS::Tag>]

The metadata that you apply to the task to help you categorize and
organize them. Each tag consists of a key and an optional value, both
of which you define. Tag keys can have a maximum character length of
128 characters, and tag values can have a maximum length of 256
characters.



=head2 B<REQUIRED> TaskDefinition => Str

The C<family> and C<revision> (C<family:revision>) or full ARN of the
task definition to start. If a C<revision> is not specified, the latest
C<ACTIVE> revision is used.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartTask in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

