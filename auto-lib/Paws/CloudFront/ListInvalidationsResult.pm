
package Paws::CloudFront::ListInvalidationsResult;
  use Moose;
  has InvalidationList => (is => 'ro', isa => 'Paws::CloudFront::InvalidationList');

  use MooseX::ClassAttribute;
  class_has _payload => (is => 'ro', default => 'InvalidationList');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::ListInvalidationsResult

=head1 ATTRIBUTES


=head2 InvalidationList => L<Paws::CloudFront::InvalidationList>

Information about invalidation batches.




=cut

