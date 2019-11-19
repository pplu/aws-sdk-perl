# Generated from callresult_class.tt

package Paws::DocDB::DBInstanceMessage;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DocDB::Types qw/DocDB_DBInstance/;
  has DBInstances => (is => 'ro', isa => ArrayRef[DocDB_DBInstance]);
  has Marker => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'DBInstances' => 'DBInstance'
                     },
  'types' => {
               'Marker' => {
                             'type' => 'Str'
                           },
               'DBInstances' => {
                                  'class' => 'Paws::DocDB::DBInstance',
                                  'type' => 'ArrayRef[DocDB_DBInstance]'
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

Paws::DocDB::DBInstanceMessage

=head1 ATTRIBUTES


=head2 DBInstances => ArrayRef[DocDB_DBInstance]

Detailed information about one or more DB instances.


=head2 Marker => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by C<MaxRecords>.


=head2 _request_id => Str


=cut

