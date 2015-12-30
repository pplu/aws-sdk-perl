
package Paws::Inspector::CreateApplicationResponse;
  use Moose;
  has ApplicationArn => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'applicationArn' );


### main pod documentation begin ###

=head1 NAME

Paws::Inspector::CreateApplicationResponse

=head1 ATTRIBUTES


=head2 ApplicationArn => Str

The ARN specifying the application that is created.




=cut

1;