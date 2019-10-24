# Generated from callresult_class.tt

package Paws::RDS::SourceRegionMessage;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::RDS::Types qw/RDS_SourceRegion/;
  has Marker => (is => 'ro', isa => Str);
  has SourceRegions => (is => 'ro', isa => ArrayRef[RDS_SourceRegion]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SourceRegions' => {
                                    'class' => 'Paws::RDS::SourceRegion',
                                    'type' => 'ArrayRef[RDS_SourceRegion]'
                                  },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Marker' => {
                             'type' => 'Str'
                           }
             },
  'NameInRequest' => {
                       'SourceRegions' => 'SourceRegion'
                     }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::SourceRegionMessage

=head1 ATTRIBUTES


=head2 Marker => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by C<MaxRecords>.


=head2 SourceRegions => ArrayRef[RDS_SourceRegion]

A list of SourceRegion instances that contains each source AWS Region
that the current AWS Region can get a Read Replica or a DB snapshot
from.


=head2 _request_id => Str


=cut

