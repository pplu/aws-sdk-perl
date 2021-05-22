
package Paws::CloudFront::ListKeyGroupsResult;
  use Moose;
  has KeyGroupList => (is => 'ro', isa => 'Paws::CloudFront::KeyGroupList', traits => ['ParamInBody']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::ListKeyGroupsResult

=head1 ATTRIBUTES


=head2 KeyGroupList => L<Paws::CloudFront::KeyGroupList>

A list of key groups.




=cut

