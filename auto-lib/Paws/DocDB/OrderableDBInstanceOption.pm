# Generated from default/object.tt
package Paws::DocDB::OrderableDBInstanceOption;
  use Moo;
  use Types::Standard qw/ArrayRef Str Bool/;
  use Paws::DocDB::Types qw/DocDB_AvailabilityZone/;
  has AvailabilityZones => (is => 'ro', isa => ArrayRef[DocDB_AvailabilityZone]);
  has DBInstanceClass => (is => 'ro', isa => Str);
  has Engine => (is => 'ro', isa => Str);
  has EngineVersion => (is => 'ro', isa => Str);
  has LicenseModel => (is => 'ro', isa => Str);
  has Vpc => (is => 'ro', isa => Bool);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'AvailabilityZones' => 'AvailabilityZone'
                     },
  'types' => {
               'Engine' => {
                             'type' => 'Str'
                           },
               'LicenseModel' => {
                                   'type' => 'Str'
                                 },
               'EngineVersion' => {
                                    'type' => 'Str'
                                  },
               'AvailabilityZones' => {
                                        'type' => 'ArrayRef[DocDB_AvailabilityZone]',
                                        'class' => 'Paws::DocDB::AvailabilityZone'
                                      },
               'Vpc' => {
                          'type' => 'Bool'
                        },
               'DBInstanceClass' => {
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

Paws::DocDB::OrderableDBInstanceOption

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DocDB::OrderableDBInstanceOption object:

  $service_obj->Method(Att1 => { AvailabilityZones => $value, ..., Vpc => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DocDB::OrderableDBInstanceOption object:

  $result = $service_obj->Method(...);
  $result->Att1->AvailabilityZones

=head1 DESCRIPTION

The options that are available for a DB instance.

=head1 ATTRIBUTES


=head2 AvailabilityZones => ArrayRef[DocDB_AvailabilityZone]

  A list of Availability Zones for a DB instance.


=head2 DBInstanceClass => Str

  The DB instance class for a DB instance.


=head2 Engine => Str

  The engine type of a DB instance.


=head2 EngineVersion => Str

  The engine version of a DB instance.


=head2 LicenseModel => Str

  The license model for a DB instance.


=head2 Vpc => Bool

  Indicates whether a DB instance is in a virtual private cloud (VPC).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DocDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

