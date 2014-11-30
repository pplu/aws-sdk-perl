
package Paws::IAM::GenerateCredentialReportResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has Description => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::GenerateCredentialReportResponse

=head1 ATTRIBUTES

=head2 Description => Str

  

Information about the credential report.









=head2 State => Str

  

Information about the state of a credential report.











=cut

