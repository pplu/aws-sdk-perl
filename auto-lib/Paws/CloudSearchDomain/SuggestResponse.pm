
package Paws::CloudSearchDomain::SuggestResponse;
  use Moose;
  has Status => (is => 'ro', isa => 'Paws::CloudSearchDomain::SuggestStatus', traits => ['NameInRequest'], request_name => 'status');
  has Suggest => (is => 'ro', isa => 'Paws::CloudSearchDomain::SuggestModel', traits => ['NameInRequest'], request_name => 'suggest');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearchDomain::SuggestResponse

=head1 ATTRIBUTES


=head2 Status => L<Paws::CloudSearchDomain::SuggestStatus>

The status of a C<SuggestRequest>. Contains the resource ID (C<rid>)
and how long it took to process the request (C<timems>).


=head2 Suggest => L<Paws::CloudSearchDomain::SuggestModel>

Container for the matching search suggestion information.


=head2 _request_id => Str


=cut

