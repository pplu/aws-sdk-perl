package Paws::EC2::ClientVpnAuthentication;
  use Moo;  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw/EC2_DirectoryServiceAuthentication EC2_CertificateAuthentication/;
  has ActiveDirectory => (is => 'ro', isa => EC2_DirectoryServiceAuthentication);
  has MutualAuthentication => (is => 'ro', isa => EC2_CertificateAuthentication);
  has Type => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'MutualAuthentication' => 'mutualAuthentication',
                       'ActiveDirectory' => 'activeDirectory',
                       'Type' => 'type'
                     },
  'types' => {
               'ActiveDirectory' => {
                                      'type' => 'EC2_DirectoryServiceAuthentication',
                                      'class' => 'Paws::EC2::DirectoryServiceAuthentication'
                                    },
               'MutualAuthentication' => {
                                           'type' => 'EC2_CertificateAuthentication',
                                           'class' => 'Paws::EC2::CertificateAuthentication'
                                         },
               'Type' => {
                           'type' => 'Str'
                         }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ClientVpnAuthentication

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::ClientVpnAuthentication object:

  $service_obj->Method(Att1 => { ActiveDirectory => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::ClientVpnAuthentication object:

  $result = $service_obj->Method(...);
  $result->Att1->ActiveDirectory

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 ActiveDirectory => EC2_DirectoryServiceAuthentication

  Information about the Active Directory, if applicable.


=head2 MutualAuthentication => EC2_CertificateAuthentication

  Information about the authentication certificates, if applicable.


=head2 Type => Str

  The authentication type used.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
