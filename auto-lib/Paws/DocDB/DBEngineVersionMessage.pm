# Generated from callresult_class.tt

package Paws::DocDB::DBEngineVersionMessage;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DocDB::Types qw/DocDB_DBEngineVersion/;
  has DBEngineVersions => (is => 'ro', isa => ArrayRef[DocDB_DBEngineVersion]);
  has Marker => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DBEngineVersions' => {
                                       'class' => 'Paws::DocDB::DBEngineVersion',
                                       'type' => 'ArrayRef[DocDB_DBEngineVersion]'
                                     },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Marker' => {
                             'type' => 'Str'
                           }
             },
  'NameInRequest' => {
                       'DBEngineVersions' => 'DBEngineVersion'
                     }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDB::DBEngineVersionMessage

=head1 ATTRIBUTES


=head2 DBEngineVersions => ArrayRef[DocDB_DBEngineVersion]

Detailed information about one or more DB engine versions.


=head2 Marker => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by C<MaxRecords>.


=head2 _request_id => Str


=cut

