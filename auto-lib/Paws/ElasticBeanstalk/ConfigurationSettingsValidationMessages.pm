
package Paws::ElasticBeanstalk::ConfigurationSettingsValidationMessages;
  use Moose;
  has Messages => (is => 'ro', isa => 'ArrayRef[Paws::ElasticBeanstalk::ValidationMessage]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::ConfigurationSettingsValidationMessages

=head1 ATTRIBUTES


=head2 Messages => ArrayRef[L<Paws::ElasticBeanstalk::ValidationMessage>]

A list of ValidationMessage.


=head2 _request_id => Str


=cut

