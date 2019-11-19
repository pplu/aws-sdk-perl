# Generated from callresult_class.tt

package Paws::RDS::DBParameterGroupsMessage;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::RDS::Types qw/RDS_DBParameterGroup/;
  has DBParameterGroups => (is => 'ro', isa => ArrayRef[RDS_DBParameterGroup]);
  has Marker => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'DBParameterGroups' => 'DBParameterGroup'
                     },
  'types' => {
               'DBParameterGroups' => {
                                        'type' => 'ArrayRef[RDS_DBParameterGroup]',
                                        'class' => 'Paws::RDS::DBParameterGroup'
                                      },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Marker' => {
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

Paws::RDS::DBParameterGroupsMessage

=head1 ATTRIBUTES


=head2 DBParameterGroups => ArrayRef[RDS_DBParameterGroup]

A list of C<DBParameterGroup> instances.


=head2 Marker => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by C<MaxRecords>.


=head2 _request_id => Str


=cut

