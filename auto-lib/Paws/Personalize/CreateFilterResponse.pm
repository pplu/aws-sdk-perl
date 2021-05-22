
package Paws::Personalize::CreateFilterResponse;
  use Moose;
  has FilterArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'filterArn' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::CreateFilterResponse

=head1 ATTRIBUTES


=head2 FilterArn => Str

The ARN of the new filter.


=head2 _request_id => Str


=cut

1;