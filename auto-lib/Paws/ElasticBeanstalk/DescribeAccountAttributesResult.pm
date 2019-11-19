# Generated from callresult_class.tt

package Paws::ElasticBeanstalk::DescribeAccountAttributesResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ElasticBeanstalk::Types qw/ElasticBeanstalk_ResourceQuotas/;
  has ResourceQuotas => (is => 'ro', isa => ElasticBeanstalk_ResourceQuotas);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ResourceQuotas' => {
                                     'type' => 'ElasticBeanstalk_ResourceQuotas',
                                     'class' => 'Paws::ElasticBeanstalk::ResourceQuotas'
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

Paws::ElasticBeanstalk::DescribeAccountAttributesResult

=head1 ATTRIBUTES


=head2 ResourceQuotas => ElasticBeanstalk_ResourceQuotas

The Elastic Beanstalk resource quotas associated with the calling AWS
account.


=head2 _request_id => Str


=cut

