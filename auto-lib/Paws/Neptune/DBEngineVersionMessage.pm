# Generated from callresult_class.tt

package Paws::Neptune::DBEngineVersionMessage;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Neptune::Types qw/Neptune_DBEngineVersion/;
  has DBEngineVersions => (is => 'ro', isa => ArrayRef[Neptune_DBEngineVersion]);
  has Marker => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DBEngineVersions' => {
                                       'class' => 'Paws::Neptune::DBEngineVersion',
                                       'type' => 'ArrayRef[Neptune_DBEngineVersion]'
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

Paws::Neptune::DBEngineVersionMessage

=head1 ATTRIBUTES


=head2 DBEngineVersions => ArrayRef[Neptune_DBEngineVersion]

A list of C<DBEngineVersion> elements.


=head2 Marker => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by C<MaxRecords>.


=head2 _request_id => Str


=cut

