
package Paws::S3Control::CreateAccessPointForObjectLambdaResult;
  use Moose;
  has ObjectLambdaAccessPointArn => (is => 'ro', isa => 'Str');


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::CreateAccessPointForObjectLambdaResult

=head1 ATTRIBUTES


=head2 ObjectLambdaAccessPointArn => Str

Specifies the ARN for the Object Lambda Access Point.




=cut

