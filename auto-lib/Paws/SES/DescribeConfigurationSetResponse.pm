
package Paws::SES::DescribeConfigurationSetResponse;
  use Moose;
  has ConfigurationSet => (is => 'ro', isa => 'Paws::SES::ConfigurationSet');
  has EventDestinations => (is => 'ro', isa => 'ArrayRef[Paws::SES::EventDestination]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::DescribeConfigurationSetResponse

=head1 ATTRIBUTES


=head2 ConfigurationSet => L<Paws::SES::ConfigurationSet>

The configuration set object associated with the specified
configuration set.



=head2 EventDestinations => ArrayRef[L<Paws::SES::EventDestination>]

A list of event destinations associated with the configuration set.




=cut

