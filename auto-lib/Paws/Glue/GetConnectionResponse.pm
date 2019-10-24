# Generated from json/callresult_class.tt

package Paws::Glue::GetConnectionResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Glue::Types qw/Glue_Connection/;
  has Connection => (is => 'ro', isa => Glue_Connection);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Connection' => {
                                 'class' => 'Paws::Glue::Connection',
                                 'type' => 'Glue_Connection'
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

Paws::Glue::GetConnectionResponse

=head1 ATTRIBUTES


=head2 Connection => Glue_Connection

The requested connection definition.


=head2 _request_id => Str


=cut

1;