package Paws::MediaConnect::Messages;
  use Moose;
  has Errors => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'errors', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::Messages

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConnect::Messages object:

  $service_obj->Method(Att1 => { Errors => $value, ..., Errors => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConnect::Messages object:

  $result = $service_obj->Method(...);
  $result->Att1->Errors

=head1 DESCRIPTION

Messages that provide the state of the flow.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Errors => ArrayRef[Str|Undef]

  A list of errors that might have been generated from processes on this
flow.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

