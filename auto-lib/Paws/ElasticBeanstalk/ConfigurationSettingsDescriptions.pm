
package Paws::ElasticBeanstalk::ConfigurationSettingsDescriptions;
  use Moose;
  has ConfigurationSettings => (is => 'ro', isa => 'ArrayRef[Paws::ElasticBeanstalk::ConfigurationSettingsDescription]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::ConfigurationSettingsDescriptions

=head1 ATTRIBUTES


=head2 ConfigurationSettings => ArrayRef[L<Paws::ElasticBeanstalk::ConfigurationSettingsDescription>]

A list of ConfigurationSettingsDescription.


=head2 _request_id => Str


=cut

