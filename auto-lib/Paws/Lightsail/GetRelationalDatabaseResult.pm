# Generated from json/callresult_class.tt

package Paws::Lightsail::GetRelationalDatabaseResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Lightsail::Types qw/Lightsail_RelationalDatabase/;
  has RelationalDatabase => (is => 'ro', isa => Lightsail_RelationalDatabase);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RelationalDatabase' => {
                                         'class' => 'Paws::Lightsail::RelationalDatabase',
                                         'type' => 'Lightsail_RelationalDatabase'
                                       },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'RelationalDatabase' => 'relationalDatabase'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetRelationalDatabaseResult

=head1 ATTRIBUTES


=head2 RelationalDatabase => Lightsail_RelationalDatabase

An object describing the specified database.


=head2 _request_id => Str


=cut

1;