
package Paws::STS::GetCallerIdentityResponse;
  use Moose;
  has Account => (is => 'ro', isa => 'Str');
  has Arn => (is => 'ro', isa => 'Str');
  has UserId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::STS::GetCallerIdentityResponse

=head1 ATTRIBUTES


=head2 Account => Str

The AWS account ID number of the account that owns or contains the
calling entity.


=head2 Arn => Str

The AWS ARN associated with the calling entity.


=head2 UserId => Str

The unique identifier of the calling entity. The exact value depends on
the type of entity making the call. The values returned are those
listed in the B<aws:userid> column in the Principal table
(http://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_variables.html#principaltable)
found on the B<Policy Variables> reference page in the I<IAM User
Guide>.


=head2 _request_id => Str


=cut

