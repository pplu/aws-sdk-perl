
package Paws::S3Control::ListAccessPointsResult;
  use Moose;
  has AccessPointList => (is => 'ro', isa => 'ArrayRef[Paws::S3Control::AccessPoint]', request_name => 'AccessPoint', traits => ['NameInRequest']);
  has NextToken => (is => 'ro', isa => 'Str');


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::ListAccessPointsResult

=head1 ATTRIBUTES


=head2 AccessPointList => ArrayRef[L<Paws::S3Control::AccessPoint>]

Contains identification and configuration information for one or more
access points associated with the specified bucket.



=head2 NextToken => Str

If the specified bucket has more access points than can be returned in
one call to this API, this field contains a continuation token that you
can provide in subsequent calls to this API to retrieve additional
access points.




=cut

