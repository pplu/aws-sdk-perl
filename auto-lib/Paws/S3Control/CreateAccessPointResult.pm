
package Paws::S3Control::CreateAccessPointResult;
  use Moose;
  has AccessPointArn => (is => 'ro', isa => 'Str');


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::CreateAccessPointResult

=head1 ATTRIBUTES


=head2 AccessPointArn => Str

The ARN of the access point.

This is only supported by Amazon S3 on Outposts.




=cut

