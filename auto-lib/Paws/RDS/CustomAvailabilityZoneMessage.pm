# Generated from callresult_class.tt

package Paws::RDS::CustomAvailabilityZoneMessage;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::RDS::Types qw/RDS_CustomAvailabilityZone/;
  has CustomAvailabilityZones => (is => 'ro', isa => ArrayRef[RDS_CustomAvailabilityZone]);
  has Marker => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Marker' => {
                             'type' => 'Str'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'CustomAvailabilityZones' => {
                                              'class' => 'Paws::RDS::CustomAvailabilityZone',
                                              'type' => 'ArrayRef[RDS_CustomAvailabilityZone]'
                                            }
             },
  'NameInRequest' => {
                       'CustomAvailabilityZones' => 'CustomAvailabilityZone'
                     }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::CustomAvailabilityZoneMessage

=head1 ATTRIBUTES


=head2 CustomAvailabilityZones => ArrayRef[RDS_CustomAvailabilityZone]

The list of CustomAvailabilityZone objects for the AWS account.


=head2 Marker => Str

An optional pagination token provided by a previous
C<DescribeCustomAvailabilityZones> request. If this parameter is
specified, the response includes only records beyond the marker, up to
the value specified by C<MaxRecords>.


=head2 _request_id => Str


=cut

