
package Paws::Lightsail::GetRelationalDatabaseBundlesResult;
  use Moose;
  has Bundles => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::RelationalDatabaseBundle]', traits => ['NameInRequest'], request_name => 'bundles' );
  has NextPageToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextPageToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetRelationalDatabaseBundlesResult

=head1 ATTRIBUTES


=head2 Bundles => ArrayRef[L<Paws::Lightsail::RelationalDatabaseBundle>]

An object describing the result of your get relational database bundles
request.


=head2 NextPageToken => Str

A token used for advancing to the next page of results of your get
relational database bundles request.


=head2 _request_id => Str


=cut

1;