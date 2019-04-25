package Paws::PinpointSMSVoice::SnsDestination;
  use Moose;
  has TopicArn => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoice::SnsDestination

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::PinpointSMSVoice::SnsDestination object:

  $service_obj->Method(Att1 => { TopicArn => $value, ..., TopicArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::PinpointSMSVoice::SnsDestination object:

  $result = $service_obj->Method(...);
  $result->Att1->TopicArn

=head1 DESCRIPTION

An object that contains information about an event destination that
sends data to Amazon SNS.

=head1 ATTRIBUTES


=head2 TopicArn => Str

  The Amazon Resource Name (ARN) of the Amazon SNS topic that you want to
publish events to.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::PinpointSMSVoice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

