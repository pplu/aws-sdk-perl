
package Paws::Quicksight::DescribeTemplateAliasResponse;
  use Moose;
  has RequestId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Int');
  has TemplateAlias => (is => 'ro', isa => 'Paws::Quicksight::TemplateAlias');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::DescribeTemplateAliasResponse

=head1 ATTRIBUTES


=head2 RequestId => Str

The AWS request ID for this operation.


=head2 Status => Int

The HTTP status of the request.


=head2 TemplateAlias => L<Paws::Quicksight::TemplateAlias>

Information about the template alias.


=head2 _request_id => Str


=cut

