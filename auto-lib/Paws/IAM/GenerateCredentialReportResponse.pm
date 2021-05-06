
package Paws::IAM::GenerateCredentialReportResponse;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::GenerateCredentialReportResponse

=head1 ATTRIBUTES


=head2 Description => Str

Information about the credential report.


=head2 State => Str

Information about the state of the credential report.

Valid values are: C<"STARTED">, C<"INPROGRESS">, C<"COMPLETE">
=head2 _request_id => Str


=cut

