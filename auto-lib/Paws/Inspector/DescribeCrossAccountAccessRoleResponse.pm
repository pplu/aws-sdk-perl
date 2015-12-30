
package Paws::Inspector::DescribeCrossAccountAccessRoleResponse;
  use Moose;
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'roleArn' );
  has Valid => (is => 'ro', isa => 'Bool', traits => ['Unwrapped'], xmlname => 'valid' );


### main pod documentation begin ###

=head1 NAME

Paws::Inspector::DescribeCrossAccountAccessRoleResponse

=head1 ATTRIBUTES


=head2 RoleArn => Str

The ARN specifying the IAM role that Inspector uses to access your AWS
account.



=head2 Valid => Bool

A Boolean value that specifies whether the IAM role has the necessary
policies attached to enable Inspector to access your AWS account.




=cut

1;