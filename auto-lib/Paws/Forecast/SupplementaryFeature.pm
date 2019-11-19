# Generated from default/object.tt
package Paws::Forecast::SupplementaryFeature;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Forecast::Types qw//;
  has Name => (is => 'ro', isa => Str, required => 1);
  has Value => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Name' => {
                           'type' => 'Str'
                         },
               'Value' => {
                            'type' => 'Str'
                          }
             },
  'IsRequired' => {
                    'Name' => 1,
                    'Value' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::SupplementaryFeature

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Forecast::SupplementaryFeature object:

  $service_obj->Method(Att1 => { Name => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Forecast::SupplementaryFeature object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

Describes a supplementary feature of a dataset group. This object is
part of the InputDataConfig object.

For this release, the only supported feature is a holiday calendar. If
the calendar is used, all data should belong to the same country as the
calendar. For the calendar data, see
http://jollyday.sourceforge.net/data.html
(http://jollyday.sourceforge.net/data.html).

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

  The name of the feature. This must be "holiday".


=head2 B<REQUIRED> Value => Str

  One of the following 2 letter country codes:

=over

=item *

"AU" - AUSTRALIA

=item *

"DE" - GERMANY

=item *

"JP" - JAPAN

=item *

"US" - UNITED_STATES

=item *

"UK" - UNITED_KINGDOM

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Forecast>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

