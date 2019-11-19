# Generated from callresult_class.tt

package Paws::RDS::DBParameterGroupDetails;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::RDS::Types qw/RDS_Parameter/;
  has Marker => (is => 'ro', isa => Str);
  has Parameters => (is => 'ro', isa => ArrayRef[RDS_Parameter]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Parameters' => 'Parameter'
                     },
  'types' => {
               'Marker' => {
                             'type' => 'Str'
                           },
               'Parameters' => {
                                 'class' => 'Paws::RDS::Parameter',
                                 'type' => 'ArrayRef[RDS_Parameter]'
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

Paws::RDS::DBParameterGroupDetails

=head1 ATTRIBUTES


=head2 Marker => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by C<MaxRecords>.


=head2 Parameters => ArrayRef[RDS_Parameter]

A list of C<Parameter> values.


=head2 _request_id => Str


=cut

