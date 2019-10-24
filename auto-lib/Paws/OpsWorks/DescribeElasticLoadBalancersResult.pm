# Generated from json/callresult_class.tt

package Paws::OpsWorks::DescribeElasticLoadBalancersResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::OpsWorks::Types qw/OpsWorks_ElasticLoadBalancer/;
  has ElasticLoadBalancers => (is => 'ro', isa => ArrayRef[OpsWorks_ElasticLoadBalancer]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ElasticLoadBalancers' => {
                                           'class' => 'Paws::OpsWorks::ElasticLoadBalancer',
                                           'type' => 'ArrayRef[OpsWorks_ElasticLoadBalancer]'
                                         }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::DescribeElasticLoadBalancersResult

=head1 ATTRIBUTES


=head2 ElasticLoadBalancers => ArrayRef[OpsWorks_ElasticLoadBalancer]

A list of C<ElasticLoadBalancer> objects that describe the specified
Elastic Load Balancing instances.


=head2 _request_id => Str


=cut

1;