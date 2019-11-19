# Generated from json/callresult_class.tt

package Paws::DirectConnect::Interconnects;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DirectConnect::Types qw/DirectConnect_Interconnect/;
  has Interconnects => (is => 'ro', isa => ArrayRef[DirectConnect_Interconnect]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Interconnects' => 'interconnects'
                     },
  'types' => {
               'Interconnects' => {
                                    'type' => 'ArrayRef[DirectConnect_Interconnect]',
                                    'class' => 'Paws::DirectConnect::Interconnect'
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

Paws::DirectConnect::Interconnects

=head1 ATTRIBUTES


=head2 Interconnects => ArrayRef[DirectConnect_Interconnect]

The interconnects.


=head2 _request_id => Str


=cut

1;