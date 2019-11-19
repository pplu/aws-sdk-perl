# Generated from callresult_class.tt

package Paws::RDS::DBParameterGroupNameMessage;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::RDS::Types qw//;
  has DBParameterGroupName => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DBParameterGroupName' => {
                                           'type' => 'Str'
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

Paws::RDS::DBParameterGroupNameMessage

=head1 ATTRIBUTES


=head2 DBParameterGroupName => Str

Provides the name of the DB parameter group.


=head2 _request_id => Str


=cut

