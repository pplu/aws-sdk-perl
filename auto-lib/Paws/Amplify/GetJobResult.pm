
package Paws::Amplify::GetJobResult;
  use Moose;
  has Job => (is => 'ro', isa => 'Paws::Amplify::Job', traits => ['NameInRequest'], request_name => 'job', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Amplify::GetJobResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> Job => L<Paws::Amplify::Job>




=head2 _request_id => Str


=cut

