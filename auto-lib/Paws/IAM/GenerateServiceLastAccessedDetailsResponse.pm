
package Paws::IAM::GenerateServiceLastAccessedDetailsResponse;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::GenerateServiceLastAccessedDetailsResponse

=head1 ATTRIBUTES


=head2 JobId => Str

The C<JobId> that you can use in the GetServiceLastAccessedDetails or
GetServiceLastAccessedDetailsWithEntities operations. The C<JobId>
returned by C<GenerateServiceLastAccessedDetail> must be used by the
same role within a session, or by the same user when used to call
C<GetServiceLastAccessedDetail>.


=head2 _request_id => Str


=cut

