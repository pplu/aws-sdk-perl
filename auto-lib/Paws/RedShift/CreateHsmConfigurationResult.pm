
package Paws::RedShift::CreateHsmConfigurationResult;
  use Moose;
  has HsmConfiguration => (is => 'ro', isa => 'Paws::RedShift::HsmConfiguration');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::CreateHsmConfigurationResult

=head1 ATTRIBUTES


=head2 HsmConfiguration => L<Paws::RedShift::HsmConfiguration>




=head2 _request_id => Str


=cut

