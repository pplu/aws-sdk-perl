# Generated from json/callargs_class.tt

package Paws::ECS::SubmitTaskStateChange;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ECS::Types qw/ECS_ContainerStateChange ECS_AttachmentStateChange/;
  has Attachments => (is => 'ro', isa => ArrayRef[ECS_AttachmentStateChange], predicate => 1);
  has Cluster => (is => 'ro', isa => Str, predicate => 1);
  has Containers => (is => 'ro', isa => ArrayRef[ECS_ContainerStateChange], predicate => 1);
  has ExecutionStoppedAt => (is => 'ro', isa => Str, predicate => 1);
  has PullStartedAt => (is => 'ro', isa => Str, predicate => 1);
  has PullStoppedAt => (is => 'ro', isa => Str, predicate => 1);
  has Reason => (is => 'ro', isa => Str, predicate => 1);
  has Status => (is => 'ro', isa => Str, predicate => 1);
  has Task => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'SubmitTaskStateChange');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::ECS::SubmitTaskStateChangeResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Containers' => {
                                 'class' => 'Paws::ECS::ContainerStateChange',
                                 'type' => 'ArrayRef[ECS_ContainerStateChange]'
                               },
               'ExecutionStoppedAt' => {
                                         'type' => 'Str'
                                       },
               'Attachments' => {
                                  'class' => 'Paws::ECS::AttachmentStateChange',
                                  'type' => 'ArrayRef[ECS_AttachmentStateChange]'
                                },
               'Status' => {
                             'type' => 'Str'
                           },
               'Task' => {
                           'type' => 'Str'
                         },
               'PullStoppedAt' => {
                                    'type' => 'Str'
                                  },
               'Reason' => {
                             'type' => 'Str'
                           },
               'Cluster' => {
                              'type' => 'Str'
                            },
               'PullStartedAt' => {
                                    'type' => 'Str'
                                  }
             },
  'NameInRequest' => {
                       'Containers' => 'containers',
                       'ExecutionStoppedAt' => 'executionStoppedAt',
                       'Attachments' => 'attachments',
                       'Status' => 'status',
                       'Task' => 'task',
                       'PullStoppedAt' => 'pullStoppedAt',
                       'Reason' => 'reason',
                       'Cluster' => 'cluster',
                       'PullStartedAt' => 'pullStartedAt'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::SubmitTaskStateChange - Arguments for method SubmitTaskStateChange on L<Paws::ECS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SubmitTaskStateChange on the
L<Amazon EC2 Container Service|Paws::ECS> service. Use the attributes of this class
as arguments to method SubmitTaskStateChange.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SubmitTaskStateChange.

=head1 SYNOPSIS

    my $ecs = Paws->service('ECS');
    my $SubmitTaskStateChangeResponse = $ecs->SubmitTaskStateChange(
      Attachments => [
        {
          AttachmentArn => 'MyString',
          Status        => 'MyString',

        },
        ...
      ],    # OPTIONAL
      Cluster    => 'MyString',    # OPTIONAL
      Containers => [
        {
          ContainerName   => 'MyString',
          ExitCode        => 1,            # OPTIONAL
          NetworkBindings => [
            {
              BindIP        => 'MyString',
              ContainerPort => 1,            # OPTIONAL
              HostPort      => 1,            # OPTIONAL
              Protocol      => 'tcp',        # values: tcp, udp; OPTIONAL
            },
            ...
          ],                                 # OPTIONAL
          Reason => 'MyString',
          Status => 'MyString',
        },
        ...
      ],                                     # OPTIONAL
      ExecutionStoppedAt => '1970-01-01T01:00:00',    # OPTIONAL
      PullStartedAt      => '1970-01-01T01:00:00',    # OPTIONAL
      PullStoppedAt      => '1970-01-01T01:00:00',    # OPTIONAL
      Reason             => 'MyString',               # OPTIONAL
      Status             => 'MyString',               # OPTIONAL
      Task               => 'MyString',               # OPTIONAL
    );

    # Results:
    my $Acknowledgment = $SubmitTaskStateChangeResponse->Acknowledgment;

    # Returns a L<Paws::ECS::SubmitTaskStateChangeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ecs/SubmitTaskStateChange>

=head1 ATTRIBUTES


=head2 Attachments => ArrayRef[ECS_AttachmentStateChange]

Any attachments associated with the state change request.



=head2 Cluster => Str

The short name or full Amazon Resource Name (ARN) of the cluster that
hosts the task.



=head2 Containers => ArrayRef[ECS_ContainerStateChange]

Any containers associated with the state change request.



=head2 ExecutionStoppedAt => Str

The Unix timestamp for when the task execution stopped.



=head2 PullStartedAt => Str

The Unix timestamp for when the container image pull began.



=head2 PullStoppedAt => Str

The Unix timestamp for when the container image pull completed.



=head2 Reason => Str

The reason for the state change request.



=head2 Status => Str

The status of the state change request.



=head2 Task => Str

The task ID or full ARN of the task in the state change request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SubmitTaskStateChange in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

