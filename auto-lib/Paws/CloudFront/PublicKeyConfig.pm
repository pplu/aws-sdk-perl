# Generated from default/object.tt
package Paws::CloudFront::PublicKeyConfig;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudFront::Types qw//;
  has CallerReference => (is => 'ro', isa => Str, required => 1);
  has Comment => (is => 'ro', isa => Str);
  has EncodedKey => (is => 'ro', isa => Str, required => 1);
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
               'EncodedKey' => {
                                 'type' => 'Str'
                               }
             },
  'IsRequired' => {
                    'CallerReference' => 1,
                    'Name' => 1,
                    'EncodedKey' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::PublicKeyConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFront::PublicKeyConfig object:

  $service_obj->Method(Att1 => { CallerReference => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFront::PublicKeyConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->CallerReference

=head1 DESCRIPTION

Information about a public key you add to CloudFront to use with
features like field-level encryption.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CallerReference => Str

  A unique number that ensures that the request can't be replayed.


=head2 Comment => Str

  An optional comment about a public key.


=head2 B<REQUIRED> EncodedKey => Str

  The encoded public key that you want to add to CloudFront to use with
features like field-level encryption.


=head2 B<REQUIRED> Name => Str

  The name for a public key you add to CloudFront to use with features
like field-level encryption.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

