
package Paws::CloudFormation::ListExportsOutput;
  use Moose;
  has Exports => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::Export]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::ListExportsOutput

=head1 ATTRIBUTES


=head2 Exports => ArrayRef[L<Paws::CloudFormation::Export>]

The output for the ListExports action.


=head2 NextToken => Str

If the output exceeds 100 exported output values, a string that
identifies the next page of exports. If there is no additional page,
this value is null.


=head2 _request_id => Str


=cut

