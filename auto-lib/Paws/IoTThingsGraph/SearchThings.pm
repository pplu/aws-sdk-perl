# Generated from json/callargs_class.tt

package Paws::IoTThingsGraph::SearchThings;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::IoTThingsGraph::Types qw//;
  has EntityId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NamespaceVersion => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'SearchThings');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::IoTThingsGraph::SearchThingsResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'MaxResults' => 'maxResults',
                       'NamespaceVersion' => 'namespaceVersion',
                       'EntityId' => 'entityId'
                     },
  'IsRequired' => {
                    'EntityId' => 1
                  },
  'types' => {
               'EntityId' => {
                               'type' => 'Str'
                             },
               'NamespaceVersion' => {
                                       'type' => 'Int'
                                     },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'MaxResults' => {
                                 'type' => 'Int'
                               }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTThingsGraph::SearchThings - Arguments for method SearchThings on L<Paws::IoTThingsGraph>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SearchThings on the
L<AWS IoT Things Graph|Paws::IoTThingsGraph> service. Use the attributes of this class
as arguments to method SearchThings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SearchThings.

=head1 SYNOPSIS

    my $iotthingsgraph = Paws->service('IoTThingsGraph');
    my $SearchThingsResponse = $iotthingsgraph->SearchThings(
      EntityId         => 'MyUrn',
      MaxResults       => 1,                # OPTIONAL
      NamespaceVersion => 1,                # OPTIONAL
      NextToken        => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken = $SearchThingsResponse->NextToken;
    my $Things    = $SearchThingsResponse->Things;

    # Returns a L<Paws::IoTThingsGraph::SearchThingsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotthingsgraph/SearchThings>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EntityId => Str

The ID of the entity to which the things are associated.

The IDs should be in the following format.

C<urn:tdm:REGION/ACCOUNT ID/default:device:DEVICENAME>



=head2 MaxResults => Int

The maximum number of results to return in the response.



=head2 NamespaceVersion => Int

The version of the user's namespace. Defaults to the latest version of
the user's namespace.



=head2 NextToken => Str

The string that specifies the next page of results. Use this when
you're paginating results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SearchThings in L<Paws::IoTThingsGraph>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

