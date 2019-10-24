# Generated from default/object.tt
package Paws::IoT::TransferData;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw//;
  has AcceptDate => (is => 'ro', isa => Str);
  has RejectDate => (is => 'ro', isa => Str);
  has RejectReason => (is => 'ro', isa => Str);
  has TransferDate => (is => 'ro', isa => Str);
  has TransferMessage => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TransferMessage' => {
                                      'type' => 'Str'
                                    },
               'TransferDate' => {
                                   'type' => 'Str'
                                 },
               'RejectDate' => {
                                 'type' => 'Str'
                               },
               'AcceptDate' => {
                                 'type' => 'Str'
                               },
               'RejectReason' => {
                                   'type' => 'Str'
                                 }
             },
  'NameInRequest' => {
                       'TransferMessage' => 'transferMessage',
                       'TransferDate' => 'transferDate',
                       'RejectDate' => 'rejectDate',
                       'AcceptDate' => 'acceptDate',
                       'RejectReason' => 'rejectReason'
                     }
}
;
    return $Params_map;
  }


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

