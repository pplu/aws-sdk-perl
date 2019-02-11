package Paws::Kinesis::KMSInvalidStateException;
  use Moose;
  has Message => (is => 'ro', isa => 'Str', request_name => 'message', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kinesis::KMSInvalidStateException

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Kinesis::KMSInvalidStateException object:

  $service_obj->Method(Att1 => { Message => $value, ..., Message => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Kinesis::KMSInvalidStateException object:

  $result = $service_obj->Method(...);
  $result->Att1->Message

=head1 DESCRIPTION

The request was rejected because the state of the specified resource
isn't valid for this request. For more information, see How Key State
Affects Use of a Customer Master Key
(http://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the I<AWS Key Management Service Developer Guide>.

=head1 ATTRIBUTES


=head2 Message => Str

  A message that provides information about the error.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Kinesis>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

