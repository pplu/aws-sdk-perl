package Paws::IoT::TransferData;
  use Moose;
  has AcceptDate => (is => 'ro', isa => 'Str', request_name => 'acceptDate', traits => ['NameInRequest']);
  has RejectDate => (is => 'ro', isa => 'Str', request_name => 'rejectDate', traits => ['NameInRequest']);
  has RejectReason => (is => 'ro', isa => 'Str', request_name => 'rejectReason', traits => ['NameInRequest']);
  has TransferDate => (is => 'ro', isa => 'Str', request_name => 'transferDate', traits => ['NameInRequest']);
  has TransferMessage => (is => 'ro', isa => 'Str', request_name => 'transferMessage', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::TransferData

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::TransferData object:

  $service_obj->Method(Att1 => { AcceptDate => $value, ..., TransferMessage => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::TransferData object:

  $result = $service_obj->Method(...);
  $result->Att1->AcceptDate

=head1 DESCRIPTION

Data used to transfer a certificate to an AWS account.

=head1 ATTRIBUTES


=head2 AcceptDate => Str

  The date the transfer was accepted.


=head2 RejectDate => Str

  The date the transfer was rejected.


=head2 RejectReason => Str

  The reason why the transfer was rejected.


=head2 TransferDate => Str

  The date the transfer took place.


=head2 TransferMessage => Str

  The transfer message.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

