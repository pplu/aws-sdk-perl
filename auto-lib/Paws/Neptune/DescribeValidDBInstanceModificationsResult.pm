# Generated from callresult_class.tt

package Paws::Neptune::DescribeValidDBInstanceModificationsResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Neptune::Types qw/Neptune_ValidDBInstanceModificationsMessage/;
  has ValidDBInstanceModificationsMessage => (is => 'ro', isa => Neptune_ValidDBInstanceModificationsMessage);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ValidDBInstanceModificationsMessage' => {
                                                          'class' => 'Paws::Neptune::ValidDBInstanceModificationsMessage',
                                                          'type' => 'Neptune_ValidDBInstanceModificationsMessage'
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

Paws::Neptune::DescribeValidDBInstanceModificationsResult

=head1 ATTRIBUTES


=head2 ValidDBInstanceModificationsMessage => Neptune_ValidDBInstanceModificationsMessage




=head2 _request_id => Str


=cut

