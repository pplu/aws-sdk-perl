# Generated from callresult_class.tt

package Paws::RDS::DBSnapshotMessage;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::RDS::Types qw/RDS_DBSnapshot/;
  has DBSnapshots => (is => 'ro', isa => ArrayRef[RDS_DBSnapshot]);
  has Marker => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DBSnapshots' => {
                                  'class' => 'Paws::RDS::DBSnapshot',
                                  'type' => 'ArrayRef[RDS_DBSnapshot]'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Marker' => {
                             'type' => 'Str'
                           }
             },
  'NameInRequest' => {
                       'DBSnapshots' => 'DBSnapshot'
                     }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DBSnapshotMessage

=head1 ATTRIBUTES


=head2 DBSnapshots => ArrayRef[RDS_DBSnapshot]

A list of C<DBSnapshot> instances.


=head2 Marker => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by C<MaxRecords>.


=head2 _request_id => Str


=cut

