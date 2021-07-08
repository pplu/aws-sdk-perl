
package Paws::FinspaceData::GetProgrammaticAccessCredentialsResponse;
  use Moose;
  has Credentials => (is => 'ro', isa => 'Paws::FinspaceData::Credentials', traits => ['NameInRequest'], request_name => 'credentials');
  has DurationInMinutes => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'durationInMinutes');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FinspaceData::GetProgrammaticAccessCredentialsResponse

=head1 ATTRIBUTES


=head2 Credentials => L<Paws::FinspaceData::Credentials>

Returns the programmatic credentials.


=head2 DurationInMinutes => Int

Returns the duration in which the credentials will remain valid.


=head2 _request_id => Str


=cut

