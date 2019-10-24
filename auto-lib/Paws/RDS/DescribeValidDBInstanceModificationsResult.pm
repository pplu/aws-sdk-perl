# Generated from callresult_class.tt

package Paws::RDS::DescribeValidDBInstanceModificationsResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::RDS::Types qw/RDS_ValidDBInstanceModificationsMessage/;
  has ValidDBInstanceModificationsMessage => (is => 'ro', isa => RDS_ValidDBInstanceModificationsMessage);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ValidDBInstanceModificationsMessage' => {
                                                          'class' => 'Paws::RDS::ValidDBInstanceModificationsMessage',
                                                          'type' => 'RDS_ValidDBInstanceModificationsMessage'
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

Paws::RDS::DescribeValidDBInstanceModificationsResult

=head1 ATTRIBUTES


=head2 ValidDBInstanceModificationsMessage => RDS_ValidDBInstanceModificationsMessage




=head2 _request_id => Str


=cut

