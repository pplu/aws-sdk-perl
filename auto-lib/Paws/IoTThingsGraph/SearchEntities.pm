# Generated from json/callargs_class.tt

package Paws::IoTThingsGraph::SearchEntities;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef Int/;
  use Paws::IoTThingsGraph::Types qw/IoTThingsGraph_EntityFilter/;
  has EntityTypes => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1, predicate => 1);
  has Filters => (is => 'ro', isa => ArrayRef[IoTThingsGraph_EntityFilter], predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NamespaceVersion => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'SearchEntities');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::IoTThingsGraph::SearchEntitiesResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'EntityTypes' => 1
                  },
  'NameInRequest' => {
                       'MaxResults' => 'maxResults',
                       'NextToken' => 'nextToken',
                       'NamespaceVersion' => 'namespaceVersion',
                       'Filters' => 'filters',
                       'EntityTypes' => 'entityTypes'
                     },
  'types' => {
               'EntityTypes' => {
                                  'type' => 'ArrayRef[Str|Undef]'
                                },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'MaxResults' => {
                                 'type' => 'Int'
                               },
               'NamespaceVersion' => {
                                       'type' => 'Int'
                                     },
               'Filters' => {
                              'type' => 'ArrayRef[IoTThingsGraph_EntityFilter]',
                              'class' => 'Paws::IoTThingsGraph::EntityFilter'
                            }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTThingsGraph::SearchEntities - Arguments for method SearchEntities on L<Paws::IoTThingsGraph>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SearchEntities on the
L<AWS IoT Things Graph|Paws::IoTThingsGraph> service. Use the attributes of this class
as arguments to method SearchEntities.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SearchEntities.

=head1 SYNOPSIS

    my $iotthingsgraph = Paws->service('IoTThingsGraph');
    my $SearchEntitiesResponse = $iotthingsgraph->SearchEntities(
      EntityTypes => [
        'DEVICE',
        ... # values: DEVICE, SERVICE, DEVICE_MODEL, CAPABILITY, STATE, ACTION, EVENT, PROPERTY, MAPPING, ENUM
      ],
      Filters => [
        {
          Name => 'NAME'
          , # values: NAME, NAMESPACE, SEMANTIC_TYPE_PATH, REFERENCED_ENTITY_ID; OPTIONAL
          Value => [ 'MyEntityFilterValue', ... ],    # OPTIONAL
        },
        ...
      ],                                              # OPTIONAL
      MaxResults       => 1,                          # OPTIONAL
      NamespaceVersion => 1,                          # OPTIONAL
      NextToken        => 'MyNextToken',              # OPTIONAL
    );

    # Results:
    my $Descriptions = $SearchEntitiesResponse->Descriptions;
    my $NextToken    = $SearchEntitiesResponse->NextToken;

    # Returns a L<Paws::IoTThingsGraph::SearchEntitiesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotthingsgraph/SearchEntities>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EntityTypes => ArrayRef[Str|Undef]

The entity types for which to search.



=head2 Filters => ArrayRef[IoTThingsGraph_EntityFilter]

Optional filter to apply to the search. Valid filters are C<NAME>
C<NAMESPACE>, C<SEMANTIC_TYPE_PATH> and C<REFERENCED_ENTITY_ID>.
C<REFERENCED_ENTITY_ID> filters on entities that are used by the entity
in the result set. For example, you can filter on the ID of a property
that is used in a state.

Multiple filters function as OR criteria in the query. Multiple values
passed inside the filter function as AND criteria.



=head2 MaxResults => Int

The maximum number of results to return in the response.



=head2 NamespaceVersion => Int

The version of the user's namespace. Defaults to the latest version of
the user's namespace.



=head2 NextToken => Str

The string that specifies the next page of results. Use this when
you're paginating results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SearchEntities in L<Paws::IoTThingsGraph>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

