# Generated from default/object.tt
package Paws::IoTThingsGraph::FlowExecutionSummary;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoTThingsGraph::Types qw//;
  has CreatedAt => (is => 'ro', isa => Str);
  has FlowExecutionId => (is => 'ro', isa => Str);
  has FlowTemplateId => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);
  has SystemInstanceId => (is => 'ro', isa => Str);
  has UpdatedAt => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'FlowExecutionId' => 'flowExecutionId',
                       'FlowTemplateId' => 'flowTemplateId',
                       'Status' => 'status',
                       'SystemInstanceId' => 'systemInstanceId',
                       'UpdatedAt' => 'updatedAt',
                       'CreatedAt' => 'createdAt'
                     },
  'types' => {
               'FlowExecutionId' => {
                                      'type' => 'Str'
                                    },
               'Status' => {
                             'type' => 'Str'
                           },
               'FlowTemplateId' => {
                                     'type' => 'Str'
                                   },
               'SystemInstanceId' => {
                                       'type' => 'Str'
                                     },
               'UpdatedAt' => {
                                'type' => 'Str'
                              },
               'CreatedAt' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTThingsGraph::FlowExecutionSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTThingsGraph::FlowExecutionSummary object:

  $service_obj->Method(Att1 => { CreatedAt => $value, ..., UpdatedAt => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTThingsGraph::FlowExecutionSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedAt

=head1 DESCRIPTION

An object that contains summary information about a flow execution.

=head1 ATTRIBUTES


=head2 CreatedAt => Str

  The date and time when the flow execution summary was created.


=head2 FlowExecutionId => Str

  The ID of the flow execution.


=head2 FlowTemplateId => Str

  The ID of the flow.


=head2 Status => Str

  The current status of the flow execution.


=head2 SystemInstanceId => Str

  The ID of the system instance that contains the flow.


=head2 UpdatedAt => Str

  The date and time when the flow execution summary was last updated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTThingsGraph>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

