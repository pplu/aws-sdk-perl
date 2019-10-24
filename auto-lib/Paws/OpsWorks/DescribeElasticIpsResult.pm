# Generated from json/callresult_class.tt

package Paws::OpsWorks::DescribeElasticIpsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::OpsWorks::Types qw/OpsWorks_ElasticIp/;
  has ElasticIps => (is => 'ro', isa => ArrayRef[OpsWorks_ElasticIp]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ElasticIps' => {
                                 'class' => 'Paws::OpsWorks::ElasticIp',
                                 'type' => 'ArrayRef[OpsWorks_ElasticIp]'
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

Paws::OpsWorks::DescribeElasticIpsResult

=head1 ATTRIBUTES


=head2 ElasticIps => ArrayRef[OpsWorks_ElasticIp]

An C<ElasticIps> object that describes the specified Elastic IP
addresses.


=head2 _request_id => Str


=cut

1;