
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

A token used for advancing to the next page of results of your get
relational database bundles request.


=head2 _request_id => Str


=cut

1;