# Generated from json/callresult_class.tt

package Paws::Glue::GetDatabaseResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Glue::Types qw/Glue_Database/;
  has Database => (is => 'ro', isa => Glue_Database);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Database' => {
                               'class' => 'Paws::Glue::Database',
                               'type' => 'Glue_Database'
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

Paws::Glue::GetDatabaseResponse

=head1 ATTRIBUTES


=head2 Database => Glue_Database

The definition of the specified database in the catalog.


=head2 _request_id => Str


=cut

1;