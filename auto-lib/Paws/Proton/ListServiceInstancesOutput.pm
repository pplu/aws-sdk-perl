
package Paws::Proton::ListServiceInstancesOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has ServiceInstances => (is => 'ro', isa => 'ArrayRef[Paws::Proton::ServiceInstanceSummary]', traits => ['NameInRequest'], request_name => 'serviceInstances' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Proton::ListServiceInstancesOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

A token to indicate the location of the next service instance in the
array of service instances, after the current requested list of service
instances.


=head2 B<REQUIRED> ServiceInstances => ArrayRef[L<Paws::Proton::ServiceInstanceSummary>]

An array of service instances with summaries of detail data.


=head2 _request_id => Str


=cut

1;