# Generated from json/callresult_class.tt

package Paws::Glue::GetTableResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Glue::Types qw/Glue_Table/;
  has Table => (is => 'ro', isa => Glue_Table);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Table' => {
                            'class' => 'Paws::Glue::Table',
                            'type' => 'Glue_Table'
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

Paws::Glue::GetTableResponse

=head1 ATTRIBUTES


=head2 Table => Glue_Table

The C<Table> object that defines the specified table.


=head2 _request_id => Str


=cut

1;