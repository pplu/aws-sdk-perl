# Generated from json/callresult_class.tt

package Paws::Lightsail::GetRelationalDatabaseSnapshotResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Lightsail::Types qw/Lightsail_RelationalDatabaseSnapshot/;
  has RelationalDatabaseSnapshot => (is => 'ro', isa => Lightsail_RelationalDatabaseSnapshot);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RelationalDatabaseSnapshot' => {
                                                 'type' => 'Lightsail_RelationalDatabaseSnapshot',
                                                 'class' => 'Paws::Lightsail::RelationalDatabaseSnapshot'
                                               },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'RelationalDatabaseSnapshot' => 'relationalDatabaseSnapshot'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetRelationalDatabaseSnapshotResult

=head1 ATTRIBUTES


=head2 RelationalDatabaseSnapshot => Lightsail_RelationalDatabaseSnapshot

An object describing the specified database snapshot.


=head2 _request_id => Str


=cut

1;