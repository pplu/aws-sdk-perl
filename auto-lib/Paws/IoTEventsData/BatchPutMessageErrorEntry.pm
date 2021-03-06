# Generated by default/object.tt
package Paws::IoTEventsData::BatchPutMessageErrorEntry;
  use Moose;
  has ErrorCode => (is => 'ro', isa => 'Str', request_name => 'errorCode', traits => ['NameInRequest']);
  has ErrorMessage => (is => 'ro', isa => 'Str', request_name => 'errorMessage', traits => ['NameInRequest']);
  has MessageId => (is => 'ro', isa => 'Str', request_name => 'messageId', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEventsData::BatchPutMessageErrorEntry

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTEventsData::BatchPutMessageErrorEntry object:

  $service_obj->Method(Att1 => { ErrorCode => $value, ..., MessageId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTEventsData::BatchPutMessageErrorEntry object:

  $result = $service_obj->Method(...);
  $result->Att1->ErrorCode

=head1 DESCRIPTION

Contains information about the errors encountered.

=head1 ATTRIBUTES


=head2 ErrorCode => Str

The error code.


=head2 ErrorMessage => Str

A message that describes the error.


=head2 MessageId => Str

The ID of the message that caused the error. (See the value
corresponding to the C<"messageId"> key in the C<"message"> object.)



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTEventsData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

