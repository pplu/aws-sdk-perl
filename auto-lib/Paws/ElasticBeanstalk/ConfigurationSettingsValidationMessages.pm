
package Paws::ElasticBeanstalk::ConfigurationSettingsValidationMessages {
  use Moose;
  with 'Paws::API::ResultParser';
  has Messages => (is => 'ro', isa => 'ArrayRef[Paws::ElasticBeanstalk::ValidationMessage]');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::ConfigurationSettingsValidationMessages

=head1 ATTRIBUTES

=head2 Messages => ArrayRef[Paws::ElasticBeanstalk::ValidationMessage]

  

A list of ValidationMessage.











=cut

