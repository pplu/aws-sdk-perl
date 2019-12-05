
package Paws::CodeBuild::UpdateReportGroupOutput;
  use Moose;
  has ReportGroup => (is => 'ro', isa => 'Paws::CodeBuild::ReportGroup', traits => ['NameInRequest'], request_name => 'reportGroup' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::UpdateReportGroupOutput

=head1 ATTRIBUTES


=head2 ReportGroup => L<Paws::CodeBuild::ReportGroup>

Information about the updated report group.


=head2 _request_id => Str


=cut

1;