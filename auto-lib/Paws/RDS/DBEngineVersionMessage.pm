# Generated from callresult_class.tt

package Paws::RDS::DBEngineVersionMessage;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::RDS::Types qw/RDS_DBEngineVersion/;
  has DBEngineVersions => (is => 'ro', isa => ArrayRef[RDS_DBEngineVersion]);
  has Marker => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'DBEngineVersions' => 'DBEngineVersion'
                     },
  'types' => {
               'Marker' => {
                             'type' => 'Str'
                           },
               'DBEngineVersions' => {
                                       'class' => 'Paws::RDS::DBEngineVersion',
                                       'type' => 'ArrayRef[RDS_DBEngineVersion]'
                                     },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DBEngineVersionMessage

=head1 ATTRIBUTES


=head2 DBEngineVersions => ArrayRef[RDS_DBEngineVersion]

A list of C<DBEngineVersion> elements.


=head2 Marker => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by C<MaxRecords>.


=head2 _request_id => Str


=cut

