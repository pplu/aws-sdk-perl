# Generated from json/callresult_class.tt

package Paws::Glue::GetConnectionsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Glue::Types qw/Glue_Connection/;
  has ConnectionList => (is => 'ro', isa => ArrayRef[Glue_Connection]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ConnectionList' => {
                                     'type' => 'ArrayRef[Glue_Connection]',
                                     'class' => 'Paws::Glue::Connection'
                                   },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextToken' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetConnectionsResponse

=head1 ATTRIBUTES


=head2 ConnectionList => ArrayRef[Glue_Connection]

A list of requested connection definitions.


=head2 NextToken => Str

A continuation token, if the list of connections returned does not
include the last of the filtered connections.


=head2 _request_id => Str


=cut

1;