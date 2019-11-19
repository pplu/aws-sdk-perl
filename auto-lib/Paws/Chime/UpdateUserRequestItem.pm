# Generated from default/object.tt
package Paws::Chime::UpdateUserRequestItem;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Chime::Types qw//;
  has LicenseType => (is => 'ro', isa => Str);
  has UserId => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LicenseType' => {
                                  'type' => 'Str'
                                },
               'UserId' => {
                             'type' => 'Str'
                           }
             },
  'IsRequired' => {
                    'UserId' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::UpdateUserRequestItem

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Chime::UpdateUserRequestItem object:

  $service_obj->Method(Att1 => { LicenseType => $value, ..., UserId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Chime::UpdateUserRequestItem object:

  $result = $service_obj->Method(...);
  $result->Att1->LicenseType

=head1 DESCRIPTION

The user ID and user fields to update, used with the BatchUpdateUser
action.

=head1 ATTRIBUTES


=head2 LicenseType => Str

  The user license type.


=head2 B<REQUIRED> UserId => Str

  The user ID.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

