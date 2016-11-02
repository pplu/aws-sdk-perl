
package Paws::Config::DescribeComplianceByResourceResponse;
  use Moose;
  has ComplianceByResources => (is => 'ro', isa => 'ArrayRef[Paws::Config::ComplianceByResource]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Config::DescribeComplianceByResourceResponse

=head1 ATTRIBUTES


=head2 ComplianceByResources => ArrayRef[L<Paws::Config::ComplianceByResource>]

Indicates whether the specified AWS resource complies with all of the
AWS Config rules that evaluate it.


=head2 NextToken => Str

The string that you use in a subsequent request to get the next page of
results in a paginated response.


=head2 _request_id => Str


=cut

1;