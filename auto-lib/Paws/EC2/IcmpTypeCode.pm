package Paws::EC2::IcmpTypeCode;
  use Moose;
  has Code => (is => 'ro', isa => 'Int', request_name => 'code', traits => ['NameInRequest']);
  has Type => (is => 'ro', isa => 'Int', request_name => 'type', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::IcmpTypeCode

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::IcmpTypeCode object:

  $service_obj->Method(Att1 => { Code => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::IcmpTypeCode object:

  $result = $service_obj->Method(...);
  $result->Att1->Code

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Code => Int

  The ICMP code. A value of -1 means all codes for the specified ICMP
type.


=head2 Type => Int

  The ICMP type. A value of -1 means all types.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
