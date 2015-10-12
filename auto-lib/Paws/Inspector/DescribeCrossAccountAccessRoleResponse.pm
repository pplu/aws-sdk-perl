
package Paws::Inspector::DescribeCrossAccountAccessRoleResponse;
  use Moose;
  has roleArn => (is => 'ro', isa => 'Str');
  has valid => (is => 'ro', isa => 'Bool');


### main pod documentation begin ###

=head1 NAME

Paws::Inspector::DescribeCrossAccountAccessRoleResponse

=head1 ATTRIBUTES

=head2 roleArn => Str

  The ARN specifying the IAM role that Inspector uses to access your AWS
account.
=head2 valid => Bool

  A Boolean value that specifies whether the IAM role has the necessary
policies attached to enable Inspector to access your AWS account.


=cut

1;