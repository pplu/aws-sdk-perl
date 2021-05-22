
package Paws::Lightsail::GetCloudFormationStackRecordsResult;
  use Moose;
  has CloudFormationStackRecords => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::CloudFormationStackRecord]', traits => ['NameInRequest'], request_name => 'cloudFormationStackRecords' );
  has NextPageToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextPageToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetCloudFormationStackRecordsResult

=head1 ATTRIBUTES


=head2 CloudFormationStackRecords => ArrayRef[L<Paws::Lightsail::CloudFormationStackRecord>]

A list of objects describing the CloudFormation stack records.


=head2 NextPageToken => Str

The token to advance to the next page of results from your request.

A next page token is not returned if there are no more results to
display.

To get the next page of results, perform another
C<GetCloudFormationStackRecords> request and specify the next page
token using the C<pageToken> parameter.


=head2 _request_id => Str


=cut

1;