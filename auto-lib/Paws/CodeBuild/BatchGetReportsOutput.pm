
package Paws::CodeBuild::BatchGetReportsOutput;
  use Moose;
  has Reports => (is => 'ro', isa => 'ArrayRef[Paws::CodeBuild::Report]', traits => ['NameInRequest'], request_name => 'reports' );
  has ReportsNotFound => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'reportsNotFound' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::BatchGetReportsOutput

=head1 ATTRIBUTES


=head2 Reports => ArrayRef[L<Paws::CodeBuild::Report>]

The array of C<Report> objects returned by C<BatchGetReports>.


=head2 ReportsNotFound => ArrayRef[Str|Undef]

An array of ARNs passed to C<BatchGetReportGroups> that are not
associated with a C<Report>.


=head2 _request_id => Str


=cut

1;