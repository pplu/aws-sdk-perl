
package Paws::Pinpoint::GetEventStream;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'application-id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetEventStream');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/apps/{application-id}/eventstream');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Pinpoint::GetEventStreamResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::GetEventStream - Arguments for method GetEventStream on L<Paws::Pinpoint>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetEventStream on the
L<Amazon Pinpoint|Paws::Pinpoint> service. Use the attributes of this class
as arguments to method GetEventStream.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetEventStream.

As an example:

  $service_obj->GetEventStream(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

ApplicationId




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetEventStream in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

