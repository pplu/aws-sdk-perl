# Generated from json/callargs_class.tt

package Paws::ECS::UpdateContainerInstancesState;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::ECS::Types qw//;
  has Cluster => (is => 'ro', isa => Str, predicate => 1);
  has ContainerInstances => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1, predicate => 1);
  has Status => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateContainerInstancesState');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::ECS::UpdateContainerInstancesStateResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Status' => {
                             'type' => 'Str'
                           },
               'Cluster' => {
                              'type' => 'Str'
                            },
               'ContainerInstances' => {
                                         'type' => 'ArrayRef[Str|Undef]'
                                       }
             },
  'NameInRequest' => {
                       'Status' => 'status',
                       'Cluster' => 'cluster',
                       'ContainerInstances' => 'containerInstances'
                     },
  'IsRequired' => {
                    'Status' => 1,
                    'ContainerInstances' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::UpdateContainerInstancesState - Arguments for method UpdateContainerInstancesState on L<Paws::ECS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateContainerInstancesState on the
L<Amazon EC2 Container Service|Paws::ECS> service. Use the attributes of this class
as arguments to method UpdateContainerInstancesState.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateContainerInstancesState.

=head1 SYNOPSIS

    my $ecs = Paws->service('ECS');
    my $UpdateContainerInstancesStateResponse =
      $ecs->UpdateContainerInstancesState(
      ContainerInstances => [ 'MyString', ... ],
      Status             => 'ACTIVE',
      Cluster            => 'MyString',            # OPTIONAL
      );

    # Results:
    my $ContainerInstances =
      $UpdateContainerInstancesStateResponse->ContainerInstances;
    my $Failures = $UpdateContainerInstancesStateResponse->Failures;

    # Returns a L<Paws::ECS::UpdateContainerInstancesStateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ecs/UpdateContainerInstancesState>

=head1 ATTRIBUTES


=head2 Cluster => Str

The short name or full Amazon Resource Name (ARN) of the cluster that
hosts the container instance to update. If you do not specify a
cluster, the default cluster is assumed.



=head2 B<REQUIRED> ContainerInstances => ArrayRef[Str|Undef]

A list of container instance IDs or full ARN entries.



=head2 B<REQUIRED> Status => Str

The container instance state with which to update the container
instance. The only valid values for this action are C<ACTIVE> and
C<DRAINING>. A container instance can only be updated to C<DRAINING>
status once it has reached an C<ACTIVE> state. If a container instance
is in C<REGISTERING>, C<DEREGISTERING>, or C<REGISTRATION_FAILED> state
you can describe the container instance but will be unable to update
the container instance state.

Valid values are: C<"ACTIVE">, C<"DRAINING">, C<"REGISTERING">, C<"DEREGISTERING">, C<"REGISTRATION_FAILED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateContainerInstancesState in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

