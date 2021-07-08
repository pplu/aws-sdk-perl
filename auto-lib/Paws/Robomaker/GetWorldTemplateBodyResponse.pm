
package Paws::Robomaker::GetWorldTemplateBodyResponse;
  use Moose;
  has TemplateBody => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'templateBody');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::GetWorldTemplateBodyResponse

=head1 ATTRIBUTES


=head2 TemplateBody => Str

The world template body.


=head2 _request_id => Str


=cut

