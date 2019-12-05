package Paws::Comprehend::EndpointProperties;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str');
  has CurrentInferenceUnits => (is => 'ro', isa => 'Int');
  has DesiredInferenceUnits => (is => 'ro', isa => 'Int');
  has EndpointArn => (is => 'ro', isa => 'Str');
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has Message => (is => 'ro', isa => 'Str');
  has ModelArn => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::EndpointProperties

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Comprehend::EndpointProperties object:

  $service_obj->Method(Att1 => { CreationTime => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Comprehend::EndpointProperties object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationTime

=head1 DESCRIPTION

Specifies information about the specified endpoint.

=head1 ATTRIBUTES


=head2 CreationTime => Str

  The creation date and time of the endpoint.


=head2 CurrentInferenceUnits => Int

  The number of inference units currently used by the model using this
endpoint.


=head2 DesiredInferenceUnits => Int

  The desired number of inference units to be used by the model using
this endpoint. Each inference unit represents of a throughput of 100
characters per second.


=head2 EndpointArn => Str

  The Amazon Resource Number (ARN) of the endpoint.


=head2 LastModifiedTime => Str

  The date and time that the endpoint was last modified.


=head2 Message => Str

  Specifies a reason for failure in cases of C<Failed> status.


=head2 ModelArn => Str

  The Amazon Resource Number (ARN) of the model to which the endpoint is
attached.


=head2 Status => Str

  Specifies the status of the endpoint. Because the endpoint updates and
creation are asynchronous, so customers will need to wait for the
endpoint to be C<Ready> status before making inference requests.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Comprehend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

