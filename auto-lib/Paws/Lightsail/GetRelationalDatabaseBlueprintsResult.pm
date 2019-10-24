# Generated from json/callresult_class.tt

package Paws::Lightsail::GetRelationalDatabaseBlueprintsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Lightsail::Types qw/Lightsail_RelationalDatabaseBlueprint/;
  has Blueprints => (is => 'ro', isa => ArrayRef[Lightsail_RelationalDatabaseBlueprint]);
  has NextPageToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Blueprints' => {
                                 'class' => 'Paws::Lightsail::RelationalDatabaseBlueprint',
                                 'type' => 'ArrayRef[Lightsail_RelationalDatabaseBlueprint]'
                               },
               'NextPageToken' => {
                                    'type' => 'Str'
                                  },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Blueprints' => 'blueprints',
                       'NextPageToken' => 'nextPageToken'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetRelationalDatabaseBlueprintsResult

=head1 ATTRIBUTES


=head2 Blueprints => ArrayRef[Lightsail_RelationalDatabaseBlueprint]

An object describing the result of your get relational database
blueprints request.


=head2 NextPageToken => Str

A token used for advancing to the next page of results of your get
relational database blueprints request.


=head2 _request_id => Str


=cut

1;