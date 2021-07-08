
package Paws::Shield::ListResourcesInProtectionGroupResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ResourceArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Shield::ListResourcesInProtectionGroupResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If you specify a value for C<MaxResults> and you have more resources in
the protection group than the value of MaxResults, AWS Shield Advanced
returns this token that you can use in your next request, to get the
next batch of objects.


=head2 B<REQUIRED> ResourceArns => ArrayRef[Str|Undef]

The Amazon Resource Names (ARNs) of the resources that are included in
the protection group.


=head2 _request_id => Str


=cut

1;