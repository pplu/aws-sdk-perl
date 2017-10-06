
package Paws::CloudFront::GetInvalidationResult;
  use Moose;
  has Invalidation => (is => 'ro', isa => 'Paws::CloudFront::Invalidation');

  use MooseX::ClassAttribute;
  class_has _payload => (is => 'ro', default => 'Invalidation');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::GetInvalidationResult

=head1 ATTRIBUTES


=head2 Invalidation => L<Paws::CloudFront::Invalidation>

The invalidation's information. For more information, see Invalidation
Complex Type
(http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/InvalidationDatatype.html).




=cut

