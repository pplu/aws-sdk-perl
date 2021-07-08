
package Paws::Proton::DeleteEnvironmentTemplateVersionOutput;
  use Moose;
  has EnvironmentTemplateVersion => (is => 'ro', isa => 'Paws::Proton::EnvironmentTemplateVersion', traits => ['NameInRequest'], request_name => 'environmentTemplateVersion' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Proton::DeleteEnvironmentTemplateVersionOutput

=head1 ATTRIBUTES


=head2 EnvironmentTemplateVersion => L<Paws::Proton::EnvironmentTemplateVersion>

The environment template version detail data that's returned by AWS
Proton.


=head2 _request_id => Str


=cut

1;