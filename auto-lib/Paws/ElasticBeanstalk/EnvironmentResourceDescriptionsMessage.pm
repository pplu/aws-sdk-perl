
package Paws::ElasticBeanstalk::EnvironmentResourceDescriptionsMessage;
  use Moose;
  has EnvironmentResources => (is => 'ro', isa => 'Paws::ElasticBeanstalk::EnvironmentResourceDescription');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::EnvironmentResourceDescriptionsMessage

=head1 ATTRIBUTES


=head2 EnvironmentResources => L<Paws::ElasticBeanstalk::EnvironmentResourceDescription>

A list of EnvironmentResourceDescription.


=head2 _request_id => Str


=cut

