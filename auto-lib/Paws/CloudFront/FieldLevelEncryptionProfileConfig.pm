# Generated from default/object.tt
package Paws::CloudFront::FieldLevelEncryptionProfileConfig;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudFront::Types qw/CloudFront_EncryptionEntities/;
  has CallerReference => (is => 'ro', isa => Str, required => 1);
  has Comment => (is => 'ro', isa => Str);
  has EncryptionEntities => (is => 'ro', isa => CloudFront_EncryptionEntities, required => 1);
  has Name => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CallerReference' => {
                                      'type' => 'Str'
                                    },
               'Comment' => {
                              'type' => 'Str'
                            },
               'Name' => {
                           'type' => 'Str'
                         },
               'EncryptionEntities' => {
                                         'class' => 'Paws::CloudFront::EncryptionEntities',
                                         'type' => 'CloudFront_EncryptionEntities'
                                       }
             },
  'IsRequired' => {
                    'CallerReference' => 1,
                    'Name' => 1,
                    'EncryptionEntities' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::FieldLevelEncryptionProfileConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFront::FieldLevelEncryptionProfileConfig object:

  $service_obj->Method(Att1 => { CallerReference => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFront::FieldLevelEncryptionProfileConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->CallerReference

=head1 DESCRIPTION

A complex data type of profiles for the field-level encryption.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CallerReference => Str

  A unique number that ensures that the request can't be replayed.


=head2 Comment => Str

  An optional comment for the field-level encryption profile.


=head2 B<REQUIRED> EncryptionEntities => CloudFront_EncryptionEntities

  A complex data type of encryption entities for the field-level
encryption profile that include the public key ID, provider, and field
patterns for specifying which fields to encrypt with this key.


=head2 B<REQUIRED> Name => Str

  Profile name for the field-level encryption profile.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

