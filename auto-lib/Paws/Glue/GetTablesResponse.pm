# Generated from json/callresult_class.tt

package Paws::Glue::GetTablesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Glue::Types qw/Glue_Table/;
  has NextToken => (is => 'ro', isa => Str);
  has TableList => (is => 'ro', isa => ArrayRef[Glue_Table]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TableList' => {
                                'type' => 'ArrayRef[Glue_Table]',
                                'class' => 'Paws::Glue::Table'
                              },
               'NextToken' => {
                                'type' => 'Str'
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

Paws::Glue::GetTablesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A continuation token, present if the current list segment is not the
last.


=head2 TableList => ArrayRef[Glue_Table]

A list of the requested C<Table> objects.


=head2 _request_id => Str


=cut

1;