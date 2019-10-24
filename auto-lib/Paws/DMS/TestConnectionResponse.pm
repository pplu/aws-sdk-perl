# Generated from json/callresult_class.tt

package Paws::DMS::TestConnectionResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DMS::Types qw/DMS_Connection/;
  has Connection => (is => 'ro', isa => DMS_Connection);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Connection' => {
                                 'class' => 'Paws::DMS::Connection',
                                 'type' => 'DMS_Connection'
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

Paws::DMS::TestConnectionResponse

=head1 ATTRIBUTES


=head2 Connection => DMS_Connection

The connection tested.


=head2 _request_id => Str


=cut

1;