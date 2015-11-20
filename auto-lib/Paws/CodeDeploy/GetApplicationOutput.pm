
package Paws::CodeDeploy::GetApplicationOutput;
  use Moose;
  has Application => (is => 'ro', isa => 'Paws::CodeDeploy::ApplicationInfo', traits => ['Unwrapped'], xmlname => 'application' );


### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::GetApplicationOutput

=head1 ATTRIBUTES


=head2 Application => L<Paws::CodeDeploy::ApplicationInfo>

  Information about the application.


=cut

1;