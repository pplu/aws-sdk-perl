package Paws::SES::Destination;
  use Moose;
  has BccAddresses => (is => 'ro', isa => 'ArrayRef[Str]');
  has CcAddresses => (is => 'ro', isa => 'ArrayRef[Str]');
  has ToAddresses => (is => 'ro', isa => 'ArrayRef[Str]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::Destination

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SES::Destination object:

  $service_obj->Method(Att1 => { BccAddresses => $value, ..., ToAddresses => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SES::Destination object:

  $result = $service_obj->Method(...);
  $result->Att1->BccAddresses

=head1 ATTRIBUTES

=head2 BccAddresses => ArrayRef[Str]

  The BCC: field(s) of the message.

=head2 CcAddresses => ArrayRef[Str]

  The CC: field(s) of the message.

=head2 ToAddresses => ArrayRef[Str]

  The To: field(s) of the message.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

