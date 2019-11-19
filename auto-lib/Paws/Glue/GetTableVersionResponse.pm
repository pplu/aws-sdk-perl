# Generated from json/callresult_class.tt

package Paws::Glue::GetTableVersionResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Glue::Types qw/Glue_TableVersion/;
  has TableVersion => (is => 'ro', isa => Glue_TableVersion);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TableVersion' => {
                                   'type' => 'Glue_TableVersion',
                                   'class' => 'Paws::Glue::TableVersion'
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

Paws::Glue::GetTableVersionResponse

=head1 ATTRIBUTES


=head2 TableVersion => Glue_TableVersion

The requested table version.


=head2 _request_id => Str


=cut

1;