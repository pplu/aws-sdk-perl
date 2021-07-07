
package Paws::Proton::GetEnvironmentTemplateOutput;
  use Moose;
  has EnvironmentTemplate => (is => 'ro', isa => 'Paws::Proton::EnvironmentTemplate', traits => ['NameInRequest'], request_name => 'environmentTemplate' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Proton::GetEnvironmentTemplateOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> EnvironmentTemplate => L<Paws::Proton::EnvironmentTemplate>

The environment template detail data that's returned by AWS Proton.


=head2 _request_id => Str


=cut

1;