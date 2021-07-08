
package Paws::Proton::DeleteEnvironmentTemplateOutput;
  use Moose;
  has EnvironmentTemplate => (is => 'ro', isa => 'Paws::Proton::EnvironmentTemplate', traits => ['NameInRequest'], request_name => 'environmentTemplate' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Proton::DeleteEnvironmentTemplateOutput

=head1 ATTRIBUTES


=head2 EnvironmentTemplate => L<Paws::Proton::EnvironmentTemplate>

The environment template detail data that's returned by AWS Proton.


=head2 _request_id => Str


=cut

1;