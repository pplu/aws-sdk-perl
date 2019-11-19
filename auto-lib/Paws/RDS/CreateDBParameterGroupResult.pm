# Generated from callresult_class.tt

package Paws::RDS::CreateDBParameterGroupResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::RDS::Types qw/RDS_DBParameterGroup/;
  has DBParameterGroup => (is => 'ro', isa => RDS_DBParameterGroup);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DBParameterGroup' => {
                                       'class' => 'Paws::RDS::DBParameterGroup',
                                       'type' => 'RDS_DBParameterGroup'
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

Paws::RDS::CreateDBParameterGroupResult

=head1 ATTRIBUTES


=head2 DBParameterGroup => RDS_DBParameterGroup




=head2 _request_id => Str


=cut

