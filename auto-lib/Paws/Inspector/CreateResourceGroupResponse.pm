
package Paws::Inspector::CreateResourceGroupResponse;
  use Moose;
  has ResourceGroupArn => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'resourceGroupArn' , required => 1);


### main pod documentation begin ###

=head1 NAME

Paws::Inspector::CreateResourceGroupResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceGroupArn => Str

The ARN that specifies the resource group that is created.




=cut

1;