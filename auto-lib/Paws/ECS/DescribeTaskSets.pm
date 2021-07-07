
package Paws::ECS::DescribeTaskSets;
  use Moose;
  has Cluster => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cluster' , required => 1);
  has Include => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'include' );
  has Service => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'service' , required => 1);
  has TaskSets => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'taskSets' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTaskSets');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECS::DescribeTaskSetsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::DescribeTaskSets - Arguments for method DescribeTaskSets on L<Paws::ECS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeTaskSets on the
L<Amazon EC2 Container Service|Paws::ECS> service. Use the attributes of this class
as arguments to method DescribeTaskSets.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeTaskSets.

=head1 SYNOPSIS

    my $ecs = Paws->service('ECS');
    my $DescribeTaskSetsResponse = $ecs->DescribeTaskSets(
      Cluster => 'MyString',
      Service => 'MyString',
      Include => [
        'TAGS', ...    # values: TAGS
      ],    # OPTIONAL
      TaskSets => [ 'MyString', ... ],    # OPTIONAL
    );

    # Results:
    my $Failures = $DescribeTaskSetsResponse->Failures;
    my $TaskSets = $DescribeTaskSetsResponse->TaskSets;

    # Returns a L<Paws::ECS::DescribeTaskSetsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ecs/DescribeTaskSets>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Cluster => Str

The short name or full Amazon Resource Name (ARN) of the cluster that
hosts the service that the task sets exist in.



=head2 Include => ArrayRef[Str|Undef]

Specifies whether to see the resource tags for the task set. If C<TAGS>
is specified, the tags are included in the response. If this field is
omitted, tags are not included in the response.



=head2 B<REQUIRED> Service => Str

The short name or full Amazon Resource Name (ARN) of the service that
the task sets exist in.



=head2 TaskSets => ArrayRef[Str|Undef]

The ID or full Amazon Resource Name (ARN) of task sets to describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeTaskSets in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

