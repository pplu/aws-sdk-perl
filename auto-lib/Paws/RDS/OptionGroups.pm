# Generated from callresult_class.tt

package Paws::RDS::OptionGroups;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::RDS::Types qw/RDS_OptionGroup/;
  has Marker => (is => 'ro', isa => Str);
  has OptionGroupsList => (is => 'ro', isa => ArrayRef[RDS_OptionGroup]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'OptionGroupsList' => {
                                       'class' => 'Paws::RDS::OptionGroup',
                                       'type' => 'ArrayRef[RDS_OptionGroup]'
                                     },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Marker' => {
                             'type' => 'Str'
                           }
             },
  'NameInRequest' => {
                       'OptionGroupsList' => 'OptionGroup'
                     }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::OptionGroups

=head1 ATTRIBUTES


=head2 Marker => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by C<MaxRecords>.


=head2 OptionGroupsList => ArrayRef[RDS_OptionGroup]

List of option groups.


=head2 _request_id => Str


=cut

