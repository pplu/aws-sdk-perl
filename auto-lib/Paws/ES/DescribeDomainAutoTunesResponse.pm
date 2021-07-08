
package Paws::ES::DescribeDomainAutoTunesResponse;
  use Moose;
  has AutoTunes => (is => 'ro', isa => 'ArrayRef[Paws::ES::AutoTune]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::DescribeDomainAutoTunesResponse

=head1 ATTRIBUTES


=head2 AutoTunes => ArrayRef[L<Paws::ES::AutoTune>]

Specifies the list of setting adjustments that Auto-Tune has made to
the domain. See the Developer Guide
(https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/auto-tune.html)
for more information.


=head2 NextToken => Str

Specifies an identifier to allow retrieval of paginated results.


=head2 _request_id => Str


=cut

