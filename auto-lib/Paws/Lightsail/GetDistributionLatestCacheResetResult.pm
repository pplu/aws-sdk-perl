
package Paws::Lightsail::GetDistributionLatestCacheResetResult;
  use Moose;
  has CreateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createTime' );
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetDistributionLatestCacheResetResult

=head1 ATTRIBUTES


=head2 CreateTime => Str

The timestamp of the last cache reset (e.g., C<1479734909.17>) in Unix
time format.


=head2 Status => Str

The status of the last cache reset.


=head2 _request_id => Str


=cut

1;