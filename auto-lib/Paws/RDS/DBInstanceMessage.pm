# Generated from callresult_class.tt

package Paws::RDS::DBInstanceMessage;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::RDS::Types qw/RDS_DBInstance/;
  has DBInstances => (is => 'ro', isa => ArrayRef[RDS_DBInstance]);
  has Marker => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Marker' => {
                             'type' => 'Str'
                           },
               'DBInstances' => {
                                  'type' => 'ArrayRef[RDS_DBInstance]',
                                  'class' => 'Paws::RDS::DBInstance'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'DBInstances' => 'DBInstance'
                     }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DBInstanceMessage

=head1 ATTRIBUTES


=head2 DBInstances => ArrayRef[RDS_DBInstance]

A list of C<DBInstance> instances.


=head2 Marker => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by C<MaxRecords> .


=head2 _request_id => Str


=cut

