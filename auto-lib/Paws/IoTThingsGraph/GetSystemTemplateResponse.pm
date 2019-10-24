# Generated from json/callresult_class.tt

package Paws::IoTThingsGraph::GetSystemTemplateResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoTThingsGraph::Types qw/IoTThingsGraph_SystemTemplateDescription/;
  has Description => (is => 'ro', isa => IoTThingsGraph_SystemTemplateDescription);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Description' => {
                                  'class' => 'Paws::IoTThingsGraph::SystemTemplateDescription',
                                  'type' => 'IoTThingsGraph_SystemTemplateDescription'
                                }
             },
  'NameInRequest' => {
                       'Description' => 'description'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::IoTThingsGraph::GetSystemTemplateResponse

=head1 ATTRIBUTES


=head2 Description => IoTThingsGraph_SystemTemplateDescription

An object that contains summary data about the system.


=head2 _request_id => Str


=cut

1;