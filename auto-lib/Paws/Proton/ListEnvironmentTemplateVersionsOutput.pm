
package Paws::Proton::ListEnvironmentTemplateVersionsOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has TemplateVersions => (is => 'ro', isa => 'ArrayRef[Paws::Proton::EnvironmentTemplateVersionSummary]', traits => ['NameInRequest'], request_name => 'templateVersions' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Proton::ListEnvironmentTemplateVersionsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

A token to indicate the location of the next major or minor version in
the array of major or minor versions of an environment template, after
the list of major or minor versions that was previously requested.


=head2 B<REQUIRED> TemplateVersions => ArrayRef[L<Paws::Proton::EnvironmentTemplateVersionSummary>]

An array of major or minor versions of an environment template detail
data.


=head2 _request_id => Str


=cut

1;