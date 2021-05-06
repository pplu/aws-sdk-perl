
package Paws::Inspector::CreateResourceGroupResponse;
  use Moose;
  has ResourceGroupArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceGroupArn' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::CreateResourceGroupResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceGroupArn => Str

The ARN that specifies the resource group that is created.


=head2 _request_id => Str


=cut

1;