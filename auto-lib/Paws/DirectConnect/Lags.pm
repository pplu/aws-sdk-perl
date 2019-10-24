# Generated from json/callresult_class.tt

package Paws::DirectConnect::Lags;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DirectConnect::Types qw/DirectConnect_Lag/;
  has Lags => (is => 'ro', isa => ArrayRef[DirectConnect_Lag]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Lags' => {
                           'class' => 'Paws::DirectConnect::Lag',
                           'type' => 'ArrayRef[DirectConnect_Lag]'
                         },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Lags' => 'lags'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::Lags

=head1 ATTRIBUTES


=head2 Lags => ArrayRef[DirectConnect_Lag]

The LAGs.


=head2 _request_id => Str


=cut

1;