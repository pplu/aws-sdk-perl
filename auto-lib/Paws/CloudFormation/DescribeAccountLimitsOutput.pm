
package Paws::CloudFormation::DescribeAccountLimitsOutput;
  use Moose;
  has AccountLimits => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::AccountLimit]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::DescribeAccountLimitsOutput

=head1 ATTRIBUTES


=head2 AccountLimits => ArrayRef[L<Paws::CloudFormation::AccountLimit>]

An account limit structure that contain a list of AWS CloudFormation
account limits and their values.


=head2 NextToken => Str

If the output exceeds 1 MB in size, a string that identifies the next
page of limits. If no additional page exists, this value is null.


=head2 _request_id => Str


=cut

