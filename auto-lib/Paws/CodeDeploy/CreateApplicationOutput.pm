
package Paws::CodeDeploy::CreateApplicationOutput;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'applicationId' );


### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::CreateApplicationOutput

=head1 ATTRIBUTES

=head2 ApplicationId => Str

  A unique application ID.


=cut

1;