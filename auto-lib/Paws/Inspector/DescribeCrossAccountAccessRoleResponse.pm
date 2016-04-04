
package Paws::Inspector::DescribeCrossAccountAccessRoleResponse;
  use Moose;
  has RegisteredAt => (is => 'ro', isa => 'Paws::API::TimeStamp', traits => ['Unwrapped'], xmlname => 'registeredAt' , required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'roleArn' , required => 1);
  has Valid => (is => 'ro', isa => 'Bool', traits => ['Unwrapped'], xmlname => 'valid' , required => 1);


### main pod documentation begin ###

=head1 NAME

Paws::Inspector::DescribeCrossAccountAccessRoleResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> RegisteredAt => L<Paws::API::TimeStamp>

The date when the cross account access role was registered.



=head2 B<REQUIRED> RoleArn => Str

The ARN specifying the IAM role that Inspector uses to access your AWS
account.



=head2 B<REQUIRED> Valid => Bool

A Boolean value that specifies whether the IAM role has the necessary
policies attached to enable Inspector to access your AWS account.




=cut

1;