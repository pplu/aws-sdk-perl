package Paws::IoT::HttpAuthorization;
  use Moose;
  has Sigv4 => (is => 'ro', isa => 'Paws::IoT::SigV4Authorization', request_name => 'sigv4', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::HttpAuthorization

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::HttpAuthorization object:

  $service_obj->Method(Att1 => { Sigv4 => $value, ..., Sigv4 => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::HttpAuthorization object:

  $result = $service_obj->Method(...);
  $result->Att1->Sigv4

=head1 DESCRIPTION

The authorization method used to send messages.

=head1 ATTRIBUTES


=head2 Sigv4 => L<Paws::IoT::SigV4Authorization>

  Use Sig V4 authorization. For more information, see Signature Version 4
Signing Process
(https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

