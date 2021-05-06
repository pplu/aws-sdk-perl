
package Paws::CodeBuild::CreateReportGroupOutput;
  use Moose;
  has ReportGroup => (is => 'ro', isa => 'Paws::CodeBuild::ReportGroup', traits => ['NameInRequest'], request_name => 'reportGroup' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::CreateReportGroupOutput

=head1 ATTRIBUTES


=head2 ReportGroup => L<Paws::CodeBuild::ReportGroup>

Information about the report group that was created.


=head2 _request_id => Str


=cut

1;