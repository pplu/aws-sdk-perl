# Generated from json/callresult_class.tt

package Paws::OpsWorks::DescribeLayersResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::OpsWorks::Types qw/OpsWorks_Layer/;
  has Layers => (is => 'ro', isa => ArrayRef[OpsWorks_Layer]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Layers' => {
                             'class' => 'Paws::OpsWorks::Layer',
                             'type' => 'ArrayRef[OpsWorks_Layer]'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::DescribeLayersResult

=head1 ATTRIBUTES


=head2 Layers => ArrayRef[OpsWorks_Layer]

An array of C<Layer> objects that describe the layers.


=head2 _request_id => Str


=cut

1;