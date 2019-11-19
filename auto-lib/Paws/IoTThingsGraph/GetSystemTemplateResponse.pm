# Generated from json/callresult_class.tt

package Paws::IoTThingsGraph::GetSystemTemplateResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoTThingsGraph::Types qw/IoTThingsGraph_SystemTemplateDescription/;
  has Description => (is => 'ro', isa => IoTThingsGraph_SystemTemplateDescription);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Description' => 'description'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Description' => {
                                  'type' => 'IoTThingsGraph_SystemTemplateDescription',
                                  'class' => 'Paws::IoTThingsGraph::SystemTemplateDescription'
                                }
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