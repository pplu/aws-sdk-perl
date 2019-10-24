# Generated from json/callresult_class.tt

package Paws::DirectConnect::DescribeConnectionLoaResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DirectConnect::Types qw/DirectConnect_Loa/;
  has Loa => (is => 'ro', isa => DirectConnect_Loa);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Loa' => {
                          'class' => 'Paws::DirectConnect::Loa',
                          'type' => 'DirectConnect_Loa'
                        },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Loa' => 'loa'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::DescribeConnectionLoaResponse

=head1 ATTRIBUTES


=head2 Loa => DirectConnect_Loa

The Letter of Authorization - Connecting Facility Assignment (LOA-CFA).


=head2 _request_id => Str


=cut

1;