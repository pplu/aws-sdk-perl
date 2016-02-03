
package Paws::Inspector::CreateResourceGroupResponse;
  use Moose;
  has ResourceGroupArn => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'resourceGroupArn' );


### main pod documentation begin ###

=head1 NAME

Paws::Inspector::CreateResourceGroupResponse

=head1 ATTRIBUTES


=head2 ResourceGroupArn => Str

The ARN specifying the resource group that is created.




=cut

1;