
package Paws::ElasticBeanstalk::ApplicationDescriptionMessage;
  use Moose;
  has Application => (is => 'ro', isa => 'Paws::ElasticBeanstalk::ApplicationDescription');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::ApplicationDescriptionMessage

=head1 ATTRIBUTES


=head2 Application => L<Paws::ElasticBeanstalk::ApplicationDescription>

The ApplicationDescription of the application.


=head2 _request_id => Str


=cut

