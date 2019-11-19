# Generated from callresult_class.tt

package Paws::RDS::AuthorizeDBSecurityGroupIngressResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::RDS::Types qw/RDS_DBSecurityGroup/;
  has DBSecurityGroup => (is => 'ro', isa => RDS_DBSecurityGroup);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DBSecurityGroup' => {
                                      'class' => 'Paws::RDS::DBSecurityGroup',
                                      'type' => 'RDS_DBSecurityGroup'
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

Paws::RDS::AuthorizeDBSecurityGroupIngressResult

=head1 ATTRIBUTES


=head2 DBSecurityGroup => RDS_DBSecurityGroup




=head2 _request_id => Str


=cut

