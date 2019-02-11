
package Paws::ECS::ListServices;
  use Moose;
  has Cluster => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cluster' );
  has LaunchType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'launchType' );
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has SchedulingStrategy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'schedulingStrategy' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListServices');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECS::ListServicesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::ListServices - Arguments for method ListServices on L<Paws::ECS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListServices on the
L<Amazon EC2 Container Service|Paws::ECS> service. Use the attributes of this class
as arguments to method ListServices.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListServices.

=head1 SYNOPSIS

    my $ecs = Paws->service('ECS');
    # To list the services in a cluster
    # This example lists the services running in the default cluster for an
    # account.
    my $ListServicesResponse = $ecs->ListServices();

    # Results:
    my $serviceArns = $ListServicesResponse->serviceArns;

    # Returns a L<Paws::ECS::ListServicesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ecs/ListServices>

=head1 ATTRIBUTES


=head2 Cluster => Str

The short name or full Amazon Resource Name (ARN) of the cluster that
hosts the services to list. If you do not specify a cluster, the
default cluster is assumed.



=head2 LaunchType => Str

The launch type for the services to list.

Valid values are: C<"EC2">, C<"FARGATE">

=head2 MaxResults => Int

The maximum number of service results returned by C<ListServices> in
paginated output. When this parameter is used, C<ListServices> only
returns C<maxResults> results in a single page along with a
C<nextToken> response element. The remaining results of the initial
request can be seen by sending another C<ListServices> request with the
returned C<nextToken> value. This value can be between 1 and 100. If
this parameter is not used, then C<ListServices> returns up to 10
results and a C<nextToken> value if applicable.



=head2 NextToken => Str

The C<nextToken> value returned from a previous paginated
C<ListServices> request where C<maxResults> was used and the results
exceeded the value of that parameter. Pagination continues from the end
of the previous results that returned the C<nextToken> value.

This token should be treated as an opaque identifier that is only used
to retrieve the next items in a list and not for other programmatic
purposes.



=head2 SchedulingStrategy => Str

The scheduling strategy for services to list.

Valid values are: C<"REPLICA">, C<"DAEMON">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListServices in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

