
package Paws::Amplify::GetAppResult;
  use Moose;
  has App => (is => 'ro', isa => 'Paws::Amplify::App', traits => ['NameInRequest'], request_name => 'app', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Amplify::GetAppResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> App => L<Paws::Amplify::App>




=head2 _request_id => Str


=cut

