# Generated from default/object.tt
package Paws::Firehose::EncryptionConfiguration;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Firehose::Types qw/Firehose_KMSEncryptionConfig/;
  has KMSEncryptionConfig => (is => 'ro', isa => Firehose_KMSEncryptionConfig);
  has NoEncryptionConfig => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'KMSEncryptionConfig' => {
                                          'type' => 'Firehose_KMSEncryptionConfig',
                                          'class' => 'Paws::Firehose::KMSEncryptionConfig'
                                        },
               'NoEncryptionConfig' => {
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

Paws::Firehose::EncryptionConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Firehose::EncryptionConfiguration object:

  $service_obj->Method(Att1 => { KMSEncryptionConfig => $value, ..., NoEncryptionConfig => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Firehose::EncryptionConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->KMSEncryptionConfig

=head1 DESCRIPTION

Describes the encryption for a destination in Amazon S3.

=head1 ATTRIBUTES


=head2 KMSEncryptionConfig => Firehose_KMSEncryptionConfig

  The encryption key.


=head2 NoEncryptionConfig => Str

  Specifically override existing encryption information to ensure that no
encryption is used.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Firehose>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

