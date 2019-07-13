
package Paws::AlexaForBusiness::ListSkillsStoreCategoriesResponse;
  use Moose;
  has CategoryList => (is => 'ro', isa => 'ArrayRef[Paws::AlexaForBusiness::Category]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::ListSkillsStoreCategoriesResponse

=head1 ATTRIBUTES


=head2 CategoryList => ArrayRef[L<Paws::AlexaForBusiness::Category>]

The list of categories.


=head2 NextToken => Str

The tokens used for pagination.


=head2 _request_id => Str


=cut

1;