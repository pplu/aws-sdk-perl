
package Paws::Proton::UpdateEnvironmentTemplateVersionOutput;
  use Moose;
  has EnvironmentTemplateVersion => (is => 'ro', isa => 'Paws::Proton::EnvironmentTemplateVersion', traits => ['NameInRequest'], request_name => 'environmentTemplateVersion' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Proton::UpdateEnvironmentTemplateVersionOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> EnvironmentTemplateVersion => L<Paws::Proton::EnvironmentTemplateVersion>

The environment template version detail data that's returned by AWS
Proton.


=head2 _request_id => Str


=cut

1;