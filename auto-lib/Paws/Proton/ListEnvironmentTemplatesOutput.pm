
package Paws::Proton::ListEnvironmentTemplatesOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has Templates => (is => 'ro', isa => 'ArrayRef[Paws::Proton::EnvironmentTemplateSummary]', traits => ['NameInRequest'], request_name => 'templates' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Proton::ListEnvironmentTemplatesOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

A token to indicate the location of the next environment template in
the array of environment templates, after the current requested list of
environment templates.


=head2 B<REQUIRED> Templates => ArrayRef[L<Paws::Proton::EnvironmentTemplateSummary>]

An array of environment templates with detail data.


=head2 _request_id => Str


=cut

1;