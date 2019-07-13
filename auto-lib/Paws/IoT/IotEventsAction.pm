package Paws::IoT::IotEventsAction;
  use Moose;
  has InputName => (is => 'ro', isa => 'Str', request_name => 'inputName', traits => ['NameInRequest'], required => 1);
  has MessageId => (is => 'ro', isa => 'Str', request_name => 'messageId', traits => ['NameInRequest']);
  has RoleArn => (is => 'ro', isa => 'Str', request_name => 'roleArn', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::IotEventsAction

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::IotEventsAction object:

  $service_obj->Method(Att1 => { InputName => $value, ..., RoleArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::IotEventsAction object:

  $result = $service_obj->Method(...);
  $result->Att1->InputName

=head1 DESCRIPTION

Sends an input to an AWS IoT Events detector.

=head1 ATTRIBUTES


=head2 B<REQUIRED> InputName => Str

  The name of the AWS IoT Events input.


=head2 MessageId => Str

  [Optional] Use this to ensure that only one input (message) with a
given messageId will be processed by an AWS IoT Events detector.


=head2 B<REQUIRED> RoleArn => Str

  The ARN of the role that grants AWS IoT permission to send an input to
an AWS IoT Events detector. ("Action":"iotevents:BatchPutMessage").



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

