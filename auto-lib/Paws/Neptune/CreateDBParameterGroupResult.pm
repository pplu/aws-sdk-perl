# Generated from callresult_class.tt

package Paws::Neptune::CreateDBParameterGroupResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Neptune::Types qw/Neptune_DBParameterGroup/;
  has DBParameterGroup => (is => 'ro', isa => Neptune_DBParameterGroup);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DBParameterGroup' => {
                                       'type' => 'Neptune_DBParameterGroup',
                                       'class' => 'Paws::Neptune::DBParameterGroup'
                                     }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptune::CreateDBParameterGroupResult

=head1 ATTRIBUTES


=head2 DBParameterGroup => Neptune_DBParameterGroup




=head2 _request_id => Str


=cut

