
package Paws::CloudFront::CreateDistributionWithTagsResult;
  use Moose;
  has Distribution => (is => 'ro', isa => 'Paws::CloudFront::Distribution', traits => ['ParamInBody']);
  has ETag => (is => 'ro', isa => 'Str', header_name => 'ETag', traits => ['ParamInHeader']);
  has Location => (is => 'ro', isa => 'Str', header_name => 'Location', traits => ['ParamInHeader']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::CreateDistributionWithTagsResult

=head1 ATTRIBUTES


=head2 Distribution => L<Paws::CloudFront::Distribution>

The distribution's information.



=head2 ETag => Str

The current version of the distribution created.



=head2 Location => Str

The fully qualified URI of the new distribution resource just created.
For example:
C<https://cloudfront.amazonaws.com/2010-11-01/distribution/EDFDVBD632BHDS5>.




=cut

