package Paws::MachineLearning::RealtimeEndpointInfo;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str');
  has EndpointStatus => (is => 'ro', isa => 'Str');
  has EndpointUrl => (is => 'ro', isa => 'Str');
  has PeakRequestsPerSecond => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MachineLearning::RealtimeEndpointInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MachineLearning::RealtimeEndpointInfo object:

  $service_obj->Method(Att1 => { CreatedAt => $value, ..., PeakRequestsPerSecond => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MachineLearning::RealtimeEndpointInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedAt

=head1 DESCRIPTION

Describes the real-time endpoint information for an C<MLModel>.

=head1 ATTRIBUTES


=head2 CreatedAt => Str

  The time that the request to create the real-time endpoint for the
C<MLModel> was received. The time is expressed in epoch time.


=head2 EndpointStatus => Str

  The current status of the real-time endpoint for the C<MLModel>. This
element can have one of the following values:

=over

=item * C<NONE> - Endpoint does not exist or was previously deleted.

=item * C<READY> - Endpoint is ready to be used for real-time
predictions.

=item * C<UPDATING> - Updating/creating the endpoint.

=back



=head2 EndpointUrl => Str

  The URI that specifies where to send real-time prediction requests for
the C<MLModel>.

The application must wait until the real-time endpoint is ready before
using this URI.


=head2 PeakRequestsPerSecond => Int

  The maximum processing rate for the real-time endpoint for C<MLModel>,
measured in incoming requests per second.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MachineLearning>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

