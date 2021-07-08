
package Paws::Proton::ListServicesOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has Services => (is => 'ro', isa => 'ArrayRef[Paws::Proton::ServiceSummary]', traits => ['NameInRequest'], request_name => 'services' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Proton::ListServicesOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

A token to indicate the location of the next service in the array of
services, after the current requested list of services.


=head2 B<REQUIRED> Services => ArrayRef[L<Paws::Proton::ServiceSummary>]

An array of services with summaries of detail data.


=head2 _request_id => Str


=cut

1;