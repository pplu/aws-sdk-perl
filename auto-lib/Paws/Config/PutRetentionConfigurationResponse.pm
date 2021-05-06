
package Paws::Config::PutRetentionConfigurationResponse;
  use Moose;
  has RetentionConfiguration => (is => 'ro', isa => 'Paws::Config::RetentionConfiguration');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Config::PutRetentionConfigurationResponse

=head1 ATTRIBUTES


=head2 RetentionConfiguration => L<Paws::Config::RetentionConfiguration>

Returns a retention configuration object.


=head2 _request_id => Str


=cut

1;