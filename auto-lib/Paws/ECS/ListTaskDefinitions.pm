
package Paws::ECS::ListTaskDefinitions;
  use Moose;
  has FamilyPrefix => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'familyPrefix' );
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has Sort => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sort' );
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTaskDefinitions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECS::ListTaskDefinitionsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::ListTaskDefinitions - Arguments for method ListTaskDefinitions on L<Paws::ECS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTaskDefinitions on the
L<Amazon EC2 Container Service|Paws::ECS> service. Use the attributes of this class
as arguments to method ListTaskDefinitions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTaskDefinitions.

=head1 SYNOPSIS

    my $ecs = Paws->service('ECS');
    # To list your registered task definitions
    # This example lists all of your registered task definitions.
    my $ListTaskDefinitionsResponse = $ecs->ListTaskDefinitions();

    # Results:
    my $taskDefinitionArns = $ListTaskDefinitionsResponse->taskDefinitionArns;

    # Returns a L<Paws::ECS::ListTaskDefinitionsResponse> object.
    # To list the registered task definitions in a family
    # This example lists the task definition revisions of a specified family.
    my $ListTaskDefinitionsResponse = $ecs->ListTaskDefinitions(
      {
        'FamilyPrefix' => 'wordpress'
      }
    );

    # Results:
    my $taskDefinitionArns = $ListTaskDefinitionsResponse->taskDefinitionArns;

    # Returns a L<Paws::ECS::ListTaskDefinitionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ecs/ListTaskDefinitions>

=head1 ATTRIBUTES


=head2 FamilyPrefix => Str

The full family name with which to filter the C<ListTaskDefinitions>
results. Specifying a C<familyPrefix> limits the listed task
definitions to task definition revisions that belong to that family.



=head2 MaxResults => Int

The maximum number of task definition results returned by
C<ListTaskDefinitions> in paginated output. When this parameter is
used, C<ListTaskDefinitions> only returns C<maxResults> results in a
single page along with a C<nextToken> response element. The remaining
results of the initial request can be seen by sending another
C<ListTaskDefinitions> request with the returned C<nextToken> value.
This value can be between 1 and 100. If this parameter is not used,
then C<ListTaskDefinitions> returns up to 100 results and a
C<nextToken> value if applicable.



=head2 NextToken => Str

The C<nextToken> value returned from a previous paginated
C<ListTaskDefinitions> request where C<maxResults> was used and the
results exceeded the value of that parameter. Pagination continues from
the end of the previous results that returned the C<nextToken> value.

This token should be treated as an opaque identifier that is only used
to retrieve the next items in a list and not for other programmatic
purposes.



=head2 Sort => Str

The order in which to sort the results. Valid values are C<ASC> and
C<DESC>. By default (C<ASC>), task definitions are listed
lexicographically by family name and in ascending numerical order by
revision so that the newest task definitions in a family are listed
last. Setting this parameter to C<DESC> reverses the sort order on
family name and revision so that the newest task definitions in a
family are listed first.

Valid values are: C<"ASC">, C<"DESC">

=head2 Status => Str

The task definition status with which to filter the
C<ListTaskDefinitions> results. By default, only C<ACTIVE> task
definitions are listed. By setting this parameter to C<INACTIVE>, you
can view task definitions that are C<INACTIVE> as long as an active
task or service still references them. If you paginate the resulting
output, be sure to keep the C<status> value constant in each subsequent
request.

Valid values are: C<"ACTIVE">, C<"INACTIVE">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTaskDefinitions in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

