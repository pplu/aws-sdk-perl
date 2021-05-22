
package Paws::ECS::ExecuteCommand;
  use Moose;
  has Cluster => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cluster' );
  has Command => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'command' , required => 1);
  has Container => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'container' );
  has Interactive => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'interactive' , required => 1);
  has Task => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'task' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ExecuteCommand');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECS::ExecuteCommandResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::ExecuteCommand - Arguments for method ExecuteCommand on L<Paws::ECS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ExecuteCommand on the
L<Amazon EC2 Container Service|Paws::ECS> service. Use the attributes of this class
as arguments to method ExecuteCommand.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ExecuteCommand.

=head1 SYNOPSIS

    my $ecs = Paws->service('ECS');
    my $ExecuteCommandResponse = $ecs->ExecuteCommand(
      Command     => 'MyString',
      Interactive => 1,
      Task        => 'MyString',
      Cluster     => 'MyString',    # OPTIONAL
      Container   => 'MyString',    # OPTIONAL
    );

    # Results:
    my $ClusterArn    = $ExecuteCommandResponse->ClusterArn;
    my $ContainerArn  = $ExecuteCommandResponse->ContainerArn;
    my $ContainerName = $ExecuteCommandResponse->ContainerName;
    my $Interactive   = $ExecuteCommandResponse->Interactive;
    my $Session       = $ExecuteCommandResponse->Session;
    my $TaskArn       = $ExecuteCommandResponse->TaskArn;

    # Returns a L<Paws::ECS::ExecuteCommandResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ecs/ExecuteCommand>

=head1 ATTRIBUTES


=head2 Cluster => Str

The Amazon Resource Name (ARN) or short name of the cluster the task is
running in. If you do not specify a cluster, the default cluster is
assumed.



=head2 B<REQUIRED> Command => Str

The command to run on the container.



=head2 Container => Str

The name of the container to execute the command on. A container name
only needs to be specified for tasks containing multiple containers.



=head2 B<REQUIRED> Interactive => Bool

Use this flag to run your command in interactive mode.



=head2 B<REQUIRED> Task => Str

The Amazon Resource Name (ARN) or ID of the task the container is part
of.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ExecuteCommand in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

