
package Paws::CodeBuild::BatchGetReportGroupsOutput;
  use Moose;
  has ReportGroups => (is => 'ro', isa => 'ArrayRef[Paws::CodeBuild::ReportGroup]', traits => ['NameInRequest'], request_name => 'reportGroups' );
  has ReportGroupsNotFound => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'reportGroupsNotFound' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::BatchGetReportGroupsOutput

=head1 ATTRIBUTES


=head2 ReportGroups => ArrayRef[L<Paws::CodeBuild::ReportGroup>]

The array of report groups returned by C<BatchGetReportGroups>.


=head2 ReportGroupsNotFound => ArrayRef[Str|Undef]

An array of ARNs passed to C<BatchGetReportGroups> that are not
associated with a C<ReportGroup>.


=head2 _request_id => Str


=cut

1;