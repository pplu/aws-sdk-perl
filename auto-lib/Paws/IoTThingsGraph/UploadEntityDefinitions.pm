# Generated from json/callargs_class.tt

package Paws::IoTThingsGraph::UploadEntityDefinitions;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::IoTThingsGraph::Types qw/IoTThingsGraph_DefinitionDocument/;
  has DeprecateExistingEntities => (is => 'ro', isa => Bool, predicate => 1);
  has Document => (is => 'ro', isa => IoTThingsGraph_DefinitionDocument, predicate => 1);
  has SyncWithPublicNamespace => (is => 'ro', isa => Bool, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UploadEntityDefinitions');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::IoTThingsGraph::UploadEntityDefinitionsResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Document' => {
                               'class' => 'Paws::IoTThingsGraph::DefinitionDocument',
                               'type' => 'IoTThingsGraph_DefinitionDocument'
                             },
               'SyncWithPublicNamespace' => {
                                              'type' => 'Bool'
                                            },
               'DeprecateExistingEntities' => {
                                                'type' => 'Bool'
                                              }
             },
  'NameInRequest' => {
                       'Document' => 'document',
                       'SyncWithPublicNamespace' => 'syncWithPublicNamespace',
                       'DeprecateExistingEntities' => 'deprecateExistingEntities'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTThingsGraph::UploadEntityDefinitions - Arguments for method UploadEntityDefinitions on L<Paws::IoTThingsGraph>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UploadEntityDefinitions on the
L<AWS IoT Things Graph|Paws::IoTThingsGraph> service. Use the attributes of this class
as arguments to method UploadEntityDefinitions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UploadEntityDefinitions.

=head1 SYNOPSIS

    my $iotthingsgraph = Paws->service('IoTThingsGraph');
    my $UploadEntityDefinitionsResponse =
      $iotthingsgraph->UploadEntityDefinitions(
      DeprecateExistingEntities => 1,    # OPTIONAL
      Document                  => {
        Language => 'GRAPHQL',             # values: GRAPHQL
        Text     => 'MyDefinitionText',    # max: 1048576

      },    # OPTIONAL
      SyncWithPublicNamespace => 1,    # OPTIONAL
      );

    # Results:
    my $UploadId = $UploadEntityDefinitionsResponse->UploadId;

    # Returns a L<Paws::IoTThingsGraph::UploadEntityDefinitionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotthingsgraph/UploadEntityDefinitions>

=head1 ATTRIBUTES


=head2 DeprecateExistingEntities => Bool

A Boolean that specifies whether to deprecate all entities in the
latest version before uploading the new C<DefinitionDocument>. If set
to C<true>, the upload will create a new namespace version.



=head2 Document => IoTThingsGraph_DefinitionDocument

The C<DefinitionDocument> that defines the updated entities.



=head2 SyncWithPublicNamespace => Bool

A Boolean that specifies whether to synchronize with the latest version
of the public namespace. If set to C<true>, the upload will create a
new namespace version.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UploadEntityDefinitions in L<Paws::IoTThingsGraph>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

