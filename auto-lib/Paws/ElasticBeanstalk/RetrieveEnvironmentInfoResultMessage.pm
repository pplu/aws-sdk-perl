
package Paws::ElasticBeanstalk::RetrieveEnvironmentInfoResultMessage;
  use Moose;
  has EnvironmentInfo => (is => 'ro', isa => 'ArrayRef[Paws::ElasticBeanstalk::EnvironmentInfoDescription]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::RetrieveEnvironmentInfoResultMessage

=head1 ATTRIBUTES


=head2 EnvironmentInfo => ArrayRef[L<Paws::ElasticBeanstalk::EnvironmentInfoDescription>]

The EnvironmentInfoDescription of the environment.


=head2 _request_id => Str


=cut

