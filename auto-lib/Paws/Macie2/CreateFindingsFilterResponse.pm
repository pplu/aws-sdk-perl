
package Paws::Macie2::CreateFindingsFilterResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::CreateFindingsFilterResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the filter that was created.


=head2 Id => Str

The unique identifier for the filter that was created.


=head2 _request_id => Str


=cut

