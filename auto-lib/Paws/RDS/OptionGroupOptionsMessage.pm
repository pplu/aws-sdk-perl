# Generated from callresult_class.tt

package Paws::RDS::OptionGroupOptionsMessage;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::RDS::Types qw/RDS_OptionGroupOption/;
  has Marker => (is => 'ro', isa => Str);
  has OptionGroupOptions => (is => 'ro', isa => ArrayRef[RDS_OptionGroupOption]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Marker' => {
                             'type' => 'Str'
                           },
               'OptionGroupOptions' => {
                                         'type' => 'ArrayRef[RDS_OptionGroupOption]',
                                         'class' => 'Paws::RDS::OptionGroupOption'
                                       },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'OptionGroupOptions' => 'OptionGroupOption'
                     }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::OptionGroupOptionsMessage

=head1 ATTRIBUTES


=head2 Marker => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by C<MaxRecords>.


=head2 OptionGroupOptions => ArrayRef[RDS_OptionGroupOption]




=head2 _request_id => Str


=cut

