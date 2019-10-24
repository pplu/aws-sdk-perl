# Generated from default/object.tt
package Paws::IoT::OutgoingCertificate;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw//;
  has CertificateArn => (is => 'ro', isa => Str);
  has CertificateId => (is => 'ro', isa => Str);
  has CreationDate => (is => 'ro', isa => Str);
  has TransferDate => (is => 'ro', isa => Str);
  has TransferMessage => (is => 'ro', isa => Str);
  has TransferredTo => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TransferMessage' => {
                                      'type' => 'Str'
                                    },
               'TransferredTo' => {
                                    'type' => 'Str'
                                  },
               'TransferDate' => {
                                   'type' => 'Str'
                                 },
               'CreationDate' => {
                                   'type' => 'Str'
                                 },
               'CertificateId' => {
                                    'type' => 'Str'
                                  },
               'CertificateArn' => {
                                     'type' => 'Str'
                                   }
             },
  'NameInRequest' => {
                       'TransferMessage' => 'transferMessage',
                       'TransferredTo' => 'transferredTo',
                       'TransferDate' => 'transferDate',
                       'CreationDate' => 'creationDate',
                       'CertificateId' => 'certificateId',
                       'CertificateArn' => 'certificateArn'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::OutgoingCertificate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::OutgoingCertificate object:

  $service_obj->Method(Att1 => { CertificateArn => $value, ..., TransferredTo => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::OutgoingCertificate object:

  $result = $service_obj->Method(...);
  $result->Att1->CertificateArn

=head1 DESCRIPTION

A certificate that has been transferred but not yet accepted.

=head1 ATTRIBUTES


=head2 CertificateArn => Str

  The certificate ARN.


=head2 CertificateId => Str

  The certificate ID.


=head2 CreationDate => Str

  The certificate creation date.


=head2 TransferDate => Str

  The date the transfer was initiated.


=head2 TransferMessage => Str

  The transfer message.


=head2 TransferredTo => Str

  The AWS account to which the transfer was made.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

