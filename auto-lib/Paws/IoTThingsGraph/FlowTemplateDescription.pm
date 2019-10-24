# Generated from default/object.tt
package Paws::IoTThingsGraph::FlowTemplateDescription;
  use Moo;
  use Types::Standard qw/Int/;
  use Paws::IoTThingsGraph::Types qw/IoTThingsGraph_FlowTemplateSummary IoTThingsGraph_DefinitionDocument/;
  has Definition => (is => 'ro', isa => IoTThingsGraph_DefinitionDocument);
  has Summary => (is => 'ro', isa => IoTThingsGraph_FlowTemplateSummary);
  has ValidatedNamespaceVersion => (is => 'ro', isa => Int);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ValidatedNamespaceVersion' => {
                                                'type' => 'Int'
                                              },
               'Definition' => {
                                 'class' => 'Paws::IoTThingsGraph::DefinitionDocument',
                                 'type' => 'IoTThingsGraph_DefinitionDocument'
                               },
               'Summary' => {
                              'class' => 'Paws::IoTThingsGraph::FlowTemplateSummary',
                              'type' => 'IoTThingsGraph_FlowTemplateSummary'
                            }
             },
  'NameInRequest' => {
                       'ValidatedNamespaceVersion' => 'validatedNamespaceVersion',
                       'Definition' => 'definition',
                       'Summary' => 'summary'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTThingsGraph::FlowTemplateDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTThingsGraph::FlowTemplateDescription object:

  $service_obj->Method(Att1 => { Definition => $value, ..., ValidatedNamespaceVersion => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTThingsGraph::FlowTemplateDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->Definition

=head1 DESCRIPTION

An object that contains a workflow's definition and summary
information.

=head1 ATTRIBUTES


=head2 Definition => IoTThingsGraph_DefinitionDocument

  A workflow's definition document.


=head2 Summary => IoTThingsGraph_FlowTemplateSummary

  An object that contains summary information about a workflow.


=head2 ValidatedNamespaceVersion => Int

  The version of the user's namespace against which the workflow was
validated. Use this value in your system instance.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTThingsGraph>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

