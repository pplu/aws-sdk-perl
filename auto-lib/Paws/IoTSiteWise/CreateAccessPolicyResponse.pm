
package Paws::IoTSiteWise::CreateAccessPolicyResponse;
  use Moose;
  has AccessPolicyArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'accessPolicyArn', required => 1);
  has AccessPolicyId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'accessPolicyId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::CreateAccessPolicyResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccessPolicyArn => Str

The ARN
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
of the access policy, which has the following format.

C<arn:${Partition}:iotsitewise:${Region}:${Account}:access-policy/${AccessPolicyId}>


=head2 B<REQUIRED> AccessPolicyId => Str

The ID of the access policy.


=head2 _request_id => Str


=cut

