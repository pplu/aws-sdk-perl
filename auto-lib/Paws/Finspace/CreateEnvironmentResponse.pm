
package Paws::Finspace::CreateEnvironmentResponse;
  use Moose;
  has EnvironmentArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'environmentArn');
  has EnvironmentId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'environmentId');
  has EnvironmentUrl => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'environmentUrl');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Finspace::CreateEnvironmentResponse

=head1 ATTRIBUTES


=head2 EnvironmentArn => Str

The Amazon Resource Name (ARN) of the FinSpace environment that you
created.


=head2 EnvironmentId => Str

The unique identifier for FinSpace environment that you created.


=head2 EnvironmentUrl => Str

The sign-in url for the web application of the FinSpace environment you
created.


=head2 _request_id => Str


=cut

