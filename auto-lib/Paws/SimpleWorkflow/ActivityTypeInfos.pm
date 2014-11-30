
package Paws::SimpleWorkflow::ActivityTypeInfos {
  use Moose;
  with 'Paws::API::ResultParser';
  has nextPageToken => (is => 'ro', isa => 'Str');
  has typeInfos => (is => 'ro', isa => 'ArrayRef[Paws::SimpleWorkflow::ActivityTypeInfo]', required => 1);

}

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::ActivityTypeInfos

=head1 ATTRIBUTES

=head2 nextPageToken => Str

  

Returns a value if the results are paginated. To get the next page of
results, repeat the request specifying this token and all other
arguments unchanged.









=head2 B<REQUIRED> typeInfos => ArrayRef[Paws::SimpleWorkflow::ActivityTypeInfo]

  

List of activity type information.











=cut

1;