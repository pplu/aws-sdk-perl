
package Paws::S3Control::ListAccessPointsForObjectLambdaResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ObjectLambdaAccessPointList => (is => 'ro', isa => 'ArrayRef[Paws::S3Control::ObjectLambdaAccessPoint]', request_name => 'ObjectLambdaAccessPoint', traits => ['NameInRequest']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::ListAccessPointsForObjectLambdaResult

=head1 ATTRIBUTES


=head2 NextToken => Str

If the list has more access points than can be returned in one call to
this API, this field contains a continuation token that you can provide
in subsequent calls to this API to retrieve additional access points.



=head2 ObjectLambdaAccessPointList => ArrayRef[L<Paws::S3Control::ObjectLambdaAccessPoint>]

Returns list of Object Lambda Access Points.




=cut

