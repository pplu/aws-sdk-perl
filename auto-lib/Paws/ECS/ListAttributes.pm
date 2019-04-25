
package Paws::ECS::ListAttributes;
  use Moose;
  has AttributeName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'attributeName' );
  has AttributeValue => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'attributeValue' );
  has Cluster => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cluster' );
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has TargetType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'targetType' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAttributes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECS::ListAttributesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::ListAttributes - Arguments for method ListAttributes on L<Paws::ECS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAttributes on the
L<Amazon EC2 Container Service|Paws::ECS> service. Use the attributes of this class
as arguments to method ListAttributes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAttributes.

=head1 SYNOPSIS

    my $ecs = Paws->service('ECS');
    my $ListAttributesResponse = $ecs->ListAttributes(
      TargetType     => 'container-instance',
      AttributeName  => 'MyString',             # OPTIONAL
      AttributeValue => 'MyString',             # OPTIONAL
      Cluster        => 'MyString',             # OPTIONAL
      MaxResults     => 1,                      # OPTIONAL
      NextToken      => 'MyString',             # OPTIONAL
    );

    # Results:
    my $Attributes = $ListAttributesResponse->Attributes;
    my $NextToken  = $ListAttributesResponse->NextToken;

    # Returns a L<Paws::ECS::ListAttributesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ecs/ListAttributes>

=head1 ATTRIBUTES


=head2 AttributeName => Str

The name of the attribute with which to filter the results.



=head2 AttributeValue => Str

The value of the attribute with which to filter results. You must also
specify an attribute name to use this parameter.



=head2 Cluster => Str

The short name or full Amazon Resource Name (ARN) of the cluster to
list attributes. If you do not specify a cluster, the default cluster
is assumed.



=head2 MaxResults => Int

The maximum number of cluster results returned by C<ListAttributes> in
paginated output. When this parameter is used, C<ListAttributes> only
returns C<maxResults> results in a single page along with a
C<nextToken> response element. The remaining results of the initial
request can be seen by sending another C<ListAttributes> request with
the returned C<nextToken> value. This value can be between 1 and 100.
If this parameter is not used, then C<ListAttributes> returns up to 100
results and a C<nextToken> value if applicable.



=head2 NextToken => Str

The C<nextToken> value returned from a previous paginated
C<ListAttributes> request where C<maxResults> was used and the results
exceeded the value of that parameter. Pagination continues from the end
of the previous results that returned the C<nextToken> value.

This token should be treated as an opaque identifier that is only used
to retrieve the next items in a list and not for other programmatic
purposes.



=head2 B<REQUIRED> TargetType => Str

The type of the target with which to list attributes.

Valid values are: C<"container-instance">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAttributes in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

