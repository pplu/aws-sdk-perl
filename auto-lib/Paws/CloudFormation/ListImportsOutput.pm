
package Paws::CloudFormation::ListImportsOutput;
  use Moose;
  has Imports => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::ListImportsOutput

=head1 ATTRIBUTES


=head2 Imports => ArrayRef[Str|Undef]

A list of stack names that are importing the specified exported output
value.


=head2 NextToken => Str

A string that identifies the next page of exports. If there is no
additional page, this value is null.


=head2 _request_id => Str


=cut

