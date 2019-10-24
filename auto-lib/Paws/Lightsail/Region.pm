# Generated from default/object.tt
package Paws::Lightsail::Region;
  use Moo;
  use Types::Standard qw/ArrayRef Str/;
  use Paws::Lightsail::Types qw/Lightsail_AvailabilityZone/;
  has AvailabilityZones => (is => 'ro', isa => ArrayRef[Lightsail_AvailabilityZone]);
  has ContinentCode => (is => 'ro', isa => Str);
  has Description => (is => 'ro', isa => Str);
  has DisplayName => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has RelationalDatabaseAvailabilityZones => (is => 'ro', isa => ArrayRef[Lightsail_AvailabilityZone]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RelationalDatabaseAvailabilityZones' => {
                                                          'class' => 'Paws::Lightsail::AvailabilityZone',
                                                          'type' => 'ArrayRef[Lightsail_AvailabilityZone]'
                                                        },
               'DisplayName' => {
                                  'type' => 'Str'
                                },
               'AvailabilityZones' => {
                                        'class' => 'Paws::Lightsail::AvailabilityZone',
                                        'type' => 'ArrayRef[Lightsail_AvailabilityZone]'
                                      },
               'ContinentCode' => {
                                    'type' => 'Str'
                                  },
               'Name' => {
                           'type' => 'Str'
                         },
               'Description' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'RelationalDatabaseAvailabilityZones' => 'relationalDatabaseAvailabilityZones',
                       'DisplayName' => 'displayName',
                       'AvailabilityZones' => 'availabilityZones',
                       'ContinentCode' => 'continentCode',
                       'Name' => 'name',
                       'Description' => 'description'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::Region

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Lightsail::Region object:

  $service_obj->Method(Att1 => { AvailabilityZones => $value, ..., RelationalDatabaseAvailabilityZones => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Lightsail::Region object:

  $result = $service_obj->Method(...);
  $result->Att1->AvailabilityZones

=head1 DESCRIPTION

Describes the AWS Region.

=head1 ATTRIBUTES


=head2 AvailabilityZones => ArrayRef[Lightsail_AvailabilityZone]

  The Availability Zones. Follows the format C<us-east-2a>
(case-sensitive).


=head2 ContinentCode => Str

  The continent code (e.g., C<NA>, meaning North America).


=head2 Description => Str

  The description of the AWS Region (e.g., C<This region is recommended
to serve users in the eastern United States and eastern Canada>).


=head2 DisplayName => Str

  The display name (e.g., C<Ohio>).


=head2 Name => Str

  The region name (e.g., C<us-east-2>).


=head2 RelationalDatabaseAvailabilityZones => ArrayRef[Lightsail_AvailabilityZone]

  The Availability Zones for databases. Follows the format C<us-east-2a>
(case-sensitive).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

