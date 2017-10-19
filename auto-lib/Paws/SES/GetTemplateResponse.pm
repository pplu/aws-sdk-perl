
package Paws::SES::GetTemplateResponse;
  use Moose;
  has Template => (is => 'ro', isa => 'Paws::SES::Template');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::GetTemplateResponse

=head1 ATTRIBUTES


=head2 Template => L<Paws::SES::Template>




=head2 _request_id => Str


=cut

