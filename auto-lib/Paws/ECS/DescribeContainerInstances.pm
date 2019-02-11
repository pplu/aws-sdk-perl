
package Paws::ECS::DescribeContainerInstances;
  use Moose;
  has Cluster => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cluster' );
  has ContainerInstances => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'containerInstances' , required => 1);
  has Include => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'include' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeContainerInstances');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECS::DescribeContainerInstancesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::DescribeContainerInstances - Arguments for method DescribeContainerInstances on L<Paws::ECS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeContainerInstances on the
L<Amazon EC2 Container Service|Paws::ECS> service. Use the attributes of this class
as arguments to method DescribeContainerInstances.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeContainerInstances.

=head1 SYNOPSIS

    my $ecs = Paws->service('ECS');
    # To describe container instance
    # This example provides a description of the specified container instance in
    # your default region, using the container instance UUID as an identifier.
    my $DescribeContainerInstancesResponse = $ecs->DescribeContainerInstances(
      {
        'Cluster'            => 'default',
        'ContainerInstances' => ['f2756532-8f13-4d53-87c9-aed50dc94cd7']
      }
    );

    # Results:
    my $containerInstances =
      $DescribeContainerInstancesResponse->containerInstances;
    my $failures = $DescribeContainerInstancesResponse->failures;

    # Returns a L<Paws::ECS::DescribeContainerInstancesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ecs/DescribeContainerInstances>

=head1 ATTRIBUTES


=head2 Cluster => Str

The short name or full Amazon Resource Name (ARN) of the cluster that
hosts the container instances to describe. If you do not specify a
cluster, the default cluster is assumed.



=head2 B<REQUIRED> ContainerInstances => ArrayRef[Str|Undef]

A list of up to 100 container instance IDs or full Amazon Resource Name
(ARN) entries.



=head2 Include => ArrayRef[Str|Undef]

Specifies whether you want to see the resource tags for the container
instance. If C<TAGS> is specified, the tags are included in the
response. If this field is omitted, tags are not included in the
response.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeContainerInstances in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

