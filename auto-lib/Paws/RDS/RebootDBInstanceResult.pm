# Generated from callresult_class.tt

package Paws::RDS::RebootDBInstanceResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::RDS::Types qw/RDS_DBInstance/;
  has DBInstance => (is => 'ro', isa => RDS_DBInstance);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DBInstance' => {
                                 'type' => 'RDS_DBInstance',
                                 'class' => 'Paws::RDS::DBInstance'
                               }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::RebootDBInstanceResult

=head1 ATTRIBUTES


=head2 DBInstance => RDS_DBInstance




=head2 _request_id => Str


=cut

