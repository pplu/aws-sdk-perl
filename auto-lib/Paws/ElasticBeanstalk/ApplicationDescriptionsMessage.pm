
package Paws::ElasticBeanstalk::ApplicationDescriptionsMessage;
  use Moose;
  has Applications => (is => 'ro', isa => 'ArrayRef[Paws::ElasticBeanstalk::ApplicationDescription]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::ApplicationDescriptionsMessage

=head1 ATTRIBUTES


=head2 Applications => ArrayRef[L<Paws::ElasticBeanstalk::ApplicationDescription>]

This parameter contains a list of ApplicationDescription.


=head2 _request_id => Str


=cut

