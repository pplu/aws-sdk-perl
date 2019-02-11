
package Paws::Macie::ListS3ResourcesResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has S3Resources => (is => 'ro', isa => 'ArrayRef[Paws::Macie::S3ResourceClassification]', traits => ['NameInRequest'], request_name => 's3Resources' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Macie::ListS3ResourcesResult

=head1 ATTRIBUTES


=head2 NextToken => Str

When a response is generated, if there is more data to be listed, this
parameter is present in the response and contains the value to use for
the nextToken parameter in a subsequent pagination request. If there is
no more data to be listed, this parameter is set to null.


=head2 S3Resources => ArrayRef[L<Paws::Macie::S3ResourceClassification>]

A list of the associated S3 resources returned by the action.


=head2 _request_id => Str


=cut

1;