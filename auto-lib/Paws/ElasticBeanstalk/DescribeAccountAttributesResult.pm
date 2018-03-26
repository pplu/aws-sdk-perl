
package Paws::ElasticBeanstalk::DescribeAccountAttributesResult;
  use Moose;
  has ResourceQuotas => (is => 'ro', isa => 'Paws::ElasticBeanstalk::ResourceQuotas');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::DescribeAccountAttributesResult

=head1 ATTRIBUTES


=head2 ResourceQuotas => L<Paws::ElasticBeanstalk::ResourceQuotas>

The Elastic Beanstalk resource quotas associated with the calling AWS
account.


=head2 _request_id => Str


=cut

