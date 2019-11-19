# Generated from json/callresult_class.tt

package Paws::OpsWorks::DescribeRdsDbInstancesResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::OpsWorks::Types qw/OpsWorks_RdsDbInstance/;
  has RdsDbInstances => (is => 'ro', isa => ArrayRef[OpsWorks_RdsDbInstance]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RdsDbInstances' => {
                                     'type' => 'ArrayRef[OpsWorks_RdsDbInstance]',
                                     'class' => 'Paws::OpsWorks::RdsDbInstance'
                                   },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::DescribeRdsDbInstancesResult

=head1 ATTRIBUTES


=head2 RdsDbInstances => ArrayRef[OpsWorks_RdsDbInstance]

An a array of C<RdsDbInstance> objects that describe the instances.


=head2 _request_id => Str


=cut

1;