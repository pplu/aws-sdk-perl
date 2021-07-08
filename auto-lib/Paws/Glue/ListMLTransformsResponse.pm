
package Paws::Glue::ListMLTransformsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has TransformIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::ListMLTransformsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A continuation token, if the returned list does not contain the last
metric available.


=head2 B<REQUIRED> TransformIds => ArrayRef[Str|Undef]

The identifiers of all the machine learning transforms in the account,
or the machine learning transforms with the specified tags.


=head2 _request_id => Str


=cut

1;