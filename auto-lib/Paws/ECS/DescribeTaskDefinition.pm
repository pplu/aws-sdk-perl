
package Paws::ECS::DescribeTaskDefinition;
  use Moose;
  has Include => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'include' );
  has TaskDefinition => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'taskDefinition' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTaskDefinition');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECS::DescribeTaskDefinitionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::DescribeTaskDefinition - Arguments for method DescribeTaskDefinition on L<Paws::ECS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeTaskDefinition on the
L<Amazon EC2 Container Service|Paws::ECS> service. Use the attributes of this class
as arguments to method DescribeTaskDefinition.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeTaskDefinition.

=head1 SYNOPSIS

    my $ecs = Paws->service('ECS');
    # To describe a task definition
    # This example provides a description of the specified task definition.
    my $DescribeTaskDefinitionResponse = $ecs->DescribeTaskDefinition(
      {
        'TaskDefinition' => 'hello_world:8'
      }
    );

    # Results:
    my $taskDefinition = $DescribeTaskDefinitionResponse->taskDefinition;

    # Returns a L<Paws::ECS::DescribeTaskDefinitionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ecs/DescribeTaskDefinition>

=head1 ATTRIBUTES


=head2 Include => ArrayRef[Str|Undef]

Specifies whether to see the resource tags for the task definition. If
C<TAGS> is specified, the tags are included in the response. If this
field is omitted, tags are not included in the response.



=head2 B<REQUIRED> TaskDefinition => Str

The C<family> for the latest C<ACTIVE> revision, C<family> and
C<revision> (C<family:revision>) for a specific revision in the family,
or full Amazon Resource Name (ARN) of the task definition to describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeTaskDefinition in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

