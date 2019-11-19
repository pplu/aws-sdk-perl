# Generated from default/object.tt
package Paws::CloudFront::QueryArgProfileConfig;
  use Moo;
  use Types::Standard qw/Bool/;
  use Paws::CloudFront::Types qw/CloudFront_QueryArgProfiles/;
  has ForwardWhenQueryArgProfileIsUnknown => (is => 'ro', isa => Bool, required => 1);
  has QueryArgProfiles => (is => 'ro', isa => CloudFront_QueryArgProfiles);

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'ForwardWhenQueryArgProfileIsUnknown' => 1
                  },
  'types' => {
               'QueryArgProfiles' => {
                                       'class' => 'Paws::CloudFront::QueryArgProfiles',
                                       'type' => 'CloudFront_QueryArgProfiles'
                                     },
               'ForwardWhenQueryArgProfileIsUnknown' => {
                                                          'type' => 'Bool'
                                                        }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::QueryArgProfileConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFront::QueryArgProfileConfig object:

  $service_obj->Method(Att1 => { ForwardWhenQueryArgProfileIsUnknown => $value, ..., QueryArgProfiles => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFront::QueryArgProfileConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->ForwardWhenQueryArgProfileIsUnknown

=head1 DESCRIPTION

Configuration for query argument-profile mapping for field-level
encryption.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ForwardWhenQueryArgProfileIsUnknown => Bool

  Flag to set if you want a request to be forwarded to the origin even if
the profile specified by the field-level encryption query argument,
fle-profile, is unknown.


=head2 QueryArgProfiles => CloudFront_QueryArgProfiles

  Profiles specified for query argument-profile mapping for field-level
encryption.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

