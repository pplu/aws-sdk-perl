
package Paws::ElasticBeanstalk::ApplicationResourceLifecycleDescriptionMessage;
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str');
  has ResourceLifecycleConfig => (is => 'ro', isa => 'Paws::ElasticBeanstalk::ApplicationResourceLifecycleConfig');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::ApplicationResourceLifecycleDescriptionMessage

=head1 ATTRIBUTES


=head2 ApplicationName => Str

The name of the application.


=head2 ResourceLifecycleConfig => L<Paws::ElasticBeanstalk::ApplicationResourceLifecycleConfig>

The lifecycle configuration.


=head2 _request_id => Str


=cut

