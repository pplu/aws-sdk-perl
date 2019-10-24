# Generated from json/callargs_class.tt

package Paws::ECS::CreateTaskSet;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ECS::Types qw/ECS_Scale ECS_LoadBalancer ECS_ServiceRegistry ECS_NetworkConfiguration/;
  has ClientToken => (is => 'ro', isa => Str, predicate => 1);
  has Cluster => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ExternalId => (is => 'ro', isa => Str, predicate => 1);
  has LaunchType => (is => 'ro', isa => Str, predicate => 1);
  has LoadBalancers => (is => 'ro', isa => ArrayRef[ECS_LoadBalancer], predicate => 1);
  has NetworkConfiguration => (is => 'ro', isa => ECS_NetworkConfiguration, predicate => 1);
  has PlatformVersion => (is => 'ro', isa => Str, predicate => 1);
  has Scale => (is => 'ro', isa => ECS_Scale, predicate => 1);
  has Service => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ServiceRegistries => (is => 'ro', isa => ArrayRef[ECS_ServiceRegistry], predicate => 1);
  has TaskDefinition => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateTaskSet');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::ECS::CreateTaskSetResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LaunchType' => {
                                 'type' => 'Str'
                               },
               'ServiceRegistries' => {
                                        'class' => 'Paws::ECS::ServiceRegistry',
                                        'type' => 'ArrayRef[ECS_ServiceRegistry]'
                                      },
               'PlatformVersion' => {
                                      'type' => 'Str'
                                    },
               'ClientToken' => {
                                  'type' => 'Str'
                                },
               'TaskDefinition' => {
                                     'type' => 'Str'
                                   },
               'Scale' => {
                            'class' => 'Paws::ECS::Scale',
                            'type' => 'ECS_Scale'
                          },
               'ExternalId' => {
                                 'type' => 'Str'
                               },
               'Service' => {
                              'type' => 'Str'
                            },
               'NetworkConfiguration' => {
                                           'class' => 'Paws::ECS::NetworkConfiguration',
                                           'type' => 'ECS_NetworkConfiguration'
                                         },
               'LoadBalancers' => {
                                    'class' => 'Paws::ECS::LoadBalancer',
                                    'type' => 'ArrayRef[ECS_LoadBalancer]'
                                  },
               'Cluster' => {
                              'type' => 'Str'
                            }
             },
  'NameInRequest' => {
                       'LaunchType' => 'launchType',
                       'ServiceRegistries' => 'serviceRegistries',
                       'PlatformVersion' => 'platformVersion',
                       'ClientToken' => 'clientToken',
                       'TaskDefinition' => 'taskDefinition',
                       'Scale' => 'scale',
                       'ExternalId' => 'externalId',
                       'Service' => 'service',
                       'NetworkConfiguration' => 'networkConfiguration',
                       'LoadBalancers' => 'loadBalancers',
                       'Cluster' => 'cluster'
                     },
  'IsRequired' => {
                    'TaskDefinition' => 1,
                    'Cluster' => 1,
                    'Service' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::CreateTaskSet - Arguments for method CreateTaskSet on L<Paws::ECS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateTaskSet on the
L<Amazon EC2 Container Service|Paws::ECS> service. Use the attributes of this class
as arguments to method CreateTaskSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateTaskSet.

=head1 SYNOPSIS

    my $ecs = Paws->service('ECS');
    my $CreateTaskSetResponse = $ecs->CreateTaskSet(
      Cluster        => 'MyString',
      Service        => 'MyString',
      TaskDefinition => 'MyString',
      ClientToken    => 'MyString',    # OPTIONAL
      ExternalId     => 'MyString',    # OPTIONAL
      LaunchType     => 'EC2',         # OPTIONAL
      LoadBalancers  => [
        {
          ContainerName    => 'MyString',
          ContainerPort    => 1,            # OPTIONAL
          LoadBalancerName => 'MyString',
          TargetGroupArn   => 'MyString',
        },
        ...
      ],                                    # OPTIONAL
      NetworkConfiguration => {
        AwsvpcConfiguration => {
          Subnets => [ 'MyString', ... ],
          AssignPublicIp => 'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
          SecurityGroups => [ 'MyString', ... ],
        },    # OPTIONAL
      },    # OPTIONAL
      PlatformVersion => 'MyString',    # OPTIONAL
      Scale           => {
        Unit  => 'PERCENT',             # values: PERCENT; OPTIONAL
        Value => 1,                     # OPTIONAL
      },    # OPTIONAL
      ServiceRegistries => [
        {
          ContainerName => 'MyString',
          ContainerPort => 1,            # OPTIONAL
          Port          => 1,            # OPTIONAL
          RegistryArn   => 'MyString',
        },
        ...
      ],                                 # OPTIONAL
    );

    # Results:
    my $TaskSet = $CreateTaskSetResponse->TaskSet;

    # Returns a L<Paws::ECS::CreateTaskSetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ecs/CreateTaskSet>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. Up to 32 ASCII characters are allowed.



=head2 B<REQUIRED> Cluster => Str

The short name or full Amazon Resource Name (ARN) of the cluster that
hosts the service to create the task set in.



=head2 ExternalId => Str

An optional non-unique tag that identifies this task set in external
systems. If the task set is associated with a service discovery
registry, the tasks in this task set will have the
C<ECS_TASK_SET_EXTERNAL_ID> AWS Cloud Map attribute set to the provided
value.



=head2 LaunchType => Str

The launch type that new tasks in the task set will use. For more
information, see Amazon ECS Launch Types
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_types.html)
in the I<Amazon Elastic Container Service Developer Guide>.

Valid values are: C<"EC2">, C<"FARGATE">

=head2 LoadBalancers => ArrayRef[ECS_LoadBalancer]

A load balancer object representing the load balancer to use with the
task set. The supported load balancer types are either an Application
Load Balancer or a Network Load Balancer.



=head2 NetworkConfiguration => ECS_NetworkConfiguration





=head2 PlatformVersion => Str

The platform version that the tasks in the task set should use. A
platform version is specified only for tasks using the Fargate launch
type. If one isn't specified, the C<LATEST> platform version is used by
default.



=head2 Scale => ECS_Scale





=head2 B<REQUIRED> Service => Str

The short name or full Amazon Resource Name (ARN) of the service to
create the task set in.



=head2 ServiceRegistries => ArrayRef[ECS_ServiceRegistry]

The details of the service discovery registries to assign to this task
set. For more information, see Service Discovery
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-discovery.html).



=head2 B<REQUIRED> TaskDefinition => Str

The task definition for the tasks in the task set to use.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateTaskSet in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

