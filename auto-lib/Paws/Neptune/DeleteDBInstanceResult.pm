# Generated from callresult_class.tt

package Paws::Neptune::DeleteDBInstanceResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Neptune::Types qw/Neptune_DBInstance/;
  has DBInstance => (is => 'ro', isa => Neptune_DBInstance);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DBInstance' => {
                                 'class' => 'Paws::Neptune::DBInstance',
                                 'type' => 'Neptune_DBInstance'
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

Paws::Neptune::DeleteDBInstanceResult

=head1 ATTRIBUTES


=head2 DBInstance => Neptune_DBInstance




=head2 _request_id => Str


=cut

