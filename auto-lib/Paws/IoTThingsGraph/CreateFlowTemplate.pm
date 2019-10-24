# Generated from json/callargs_class.tt

package Paws::IoTThingsGraph::CreateFlowTemplate;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::IoTThingsGraph::Types qw/IoTThingsGraph_DefinitionDocument/;
  has CompatibleNamespaceVersion => (is => 'ro', isa => Int, predicate => 1);
  has Definition => (is => 'ro', isa => IoTThingsGraph_DefinitionDocument, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateFlowTemplate');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::IoTThingsGraph::CreateFlowTemplateResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CompatibleNamespaceVersion' => {
                                                 'type' => 'Int'
                                               },
               'Definition' => {
                                 'class' => 'Paws::IoTThingsGraph::DefinitionDocument',
                                 'type' => 'IoTThingsGraph_DefinitionDocument'
                               }
             },
  'NameInRequest' => {
                       'CompatibleNamespaceVersion' => 'compatibleNamespaceVersion',
                       'Definition' => 'definition'
                     },
  'IsRequired' => {
                    'Definition' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTThingsGraph::CreateFlowTemplate - Arguments for method CreateFlowTemplate on L<Paws::IoTThingsGraph>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateFlowTemplate on the
L<AWS IoT Things Graph|Paws::IoTThingsGraph> service. Use the attributes of this class
as arguments to method CreateFlowTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateFlowTemplate.

=head1 SYNOPSIS

    my $iotthingsgraph = Paws->service('IoTThingsGraph');
    my $CreateFlowTemplateResponse = $iotthingsgraph->CreateFlowTemplate(
      Definition => {
        Language => 'GRAPHQL',             # values: GRAPHQL
        Text     => 'MyDefinitionText',    # max: 1048576

      },
      CompatibleNamespaceVersion => 1,     # OPTIONAL
    );

    # Results:
    my $Summary = $CreateFlowTemplateResponse->Summary;

    # Returns a L<Paws::IoTThingsGraph::CreateFlowTemplateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotthingsgraph/CreateFlowTemplate>

=head1 ATTRIBUTES


=head2 CompatibleNamespaceVersion => Int

The namespace version in which the workflow is to be created.

If no value is specified, the latest version is used by default.



=head2 B<REQUIRED> Definition => IoTThingsGraph_DefinitionDocument

The workflow C<DefinitionDocument>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateFlowTemplate in L<Paws::IoTThingsGraph>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

