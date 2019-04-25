
package Paws::ECS::DescribeServices;
  use Moose;
  has Cluster => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cluster' );
  has Include => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'include' );
  has Services => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'services' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeServices');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECS::DescribeServicesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::DescribeServices - Arguments for method DescribeServices on L<Paws::ECS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeServices on the
L<Amazon EC2 Container Service|Paws::ECS> service. Use the attributes of this class
as arguments to method DescribeServices.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeServices.

=head1 SYNOPSIS

    my $ecs = Paws->service('ECS');
    # To describe a service
    # This example provides descriptive information about the service named
    # ``ecs-simple-service``.
    my $DescribeServicesResponse = $ecs->DescribeServices(
      {
        'Services' => ['ecs-simple-service']
      }
    );

    # Results:
    my $failures = $DescribeServicesResponse->failures;
    my $services = $DescribeServicesResponse->services;

    # Returns a L<Paws::ECS::DescribeServicesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ecs/DescribeServices>

=head1 ATTRIBUTES


=head2 Cluster => Str

The short name or full Amazon Resource Name (ARN)the cluster that hosts
the service to describe. If you do not specify a cluster, the default
cluster is assumed.



=head2 Include => ArrayRef[Str|Undef]

Specifies whether you want to see the resource tags for the service. If
C<TAGS> is specified, the tags are included in the response. If this
field is omitted, tags are not included in the response.



=head2 B<REQUIRED> Services => ArrayRef[Str|Undef]

A list of services to describe. You may specify up to 10 services to
describe in a single operation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeServices in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

