
package Paws::ECS::DescribeTasks;
  use Moose;
  has Cluster => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cluster' );
  has Include => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'include' );
  has Tasks => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'tasks' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTasks');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECS::DescribeTasksResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::DescribeTasks - Arguments for method DescribeTasks on L<Paws::ECS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeTasks on the
L<Amazon EC2 Container Service|Paws::ECS> service. Use the attributes of this class
as arguments to method DescribeTasks.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeTasks.

=head1 SYNOPSIS

    my $ecs = Paws->service('ECS');
    # To describe a task
    # This example provides a description of the specified task, using the task
    # UUID as an identifier.
    my $DescribeTasksResponse = $ecs->DescribeTasks(
      {
        'Tasks' => ['c5cba4eb-5dad-405e-96db-71ef8eefe6a8']
      }
    );

    # Results:
    my $failures = $DescribeTasksResponse->failures;
    my $tasks    = $DescribeTasksResponse->tasks;

    # Returns a L<Paws::ECS::DescribeTasksResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ecs/DescribeTasks>

=head1 ATTRIBUTES


=head2 Cluster => Str

The short name or full Amazon Resource Name (ARN) of the cluster that
hosts the task to describe. If you do not specify a cluster, the
default cluster is assumed.



=head2 Include => ArrayRef[Str|Undef]

Specifies whether you want to see the resource tags for the task. If
C<TAGS> is specified, the tags are included in the response. If this
field is omitted, tags are not included in the response.



=head2 B<REQUIRED> Tasks => ArrayRef[Str|Undef]

A list of up to 100 task IDs or full ARN entries.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeTasks in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

