
package Paws::ElasticBeanstalk::ApplicationVersionDescriptionMessage;
  use Moose;
  has ApplicationVersion => (is => 'ro', isa => 'Paws::ElasticBeanstalk::ApplicationVersionDescription');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::ApplicationVersionDescriptionMessage

=head1 ATTRIBUTES


=head2 ApplicationVersion => L<Paws::ElasticBeanstalk::ApplicationVersionDescription>

The ApplicationVersionDescription of the application version.


=head2 _request_id => Str


=cut

