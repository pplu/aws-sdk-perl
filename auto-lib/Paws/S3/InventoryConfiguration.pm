# Generated from default/object.tt
package Paws::S3::InventoryConfiguration;
  use Moo;
  use Types::Standard qw/Str Bool ArrayRef Undef/;
  use Paws::S3::Types qw/S3_InventoryFilter S3_InventoryDestination S3_InventorySchedule/;
  has Destination => (is => 'ro', isa => S3_InventoryDestination, required => 1);
  has Filter => (is => 'ro', isa => S3_InventoryFilter);
  has Id => (is => 'ro', isa => Str, required => 1);
  has IncludedObjectVersions => (is => 'ro', isa => Str, required => 1);
  has IsEnabled => (is => 'ro', isa => Bool, required => 1);
  has OptionalFields => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has Schedule => (is => 'ro', isa => S3_InventorySchedule, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Filter' => {
                             'class' => 'Paws::S3::InventoryFilter',
                             'type' => 'S3_InventoryFilter'
                           },
               'Id' => {
                         'type' => 'Str'
                       },
               'OptionalFields' => {
                                     'type' => 'ArrayRef[Str|Undef]'
                                   },
               'IncludedObjectVersions' => {
                                             'type' => 'Str'
                                           },
               'Schedule' => {
                               'class' => 'Paws::S3::InventorySchedule',
                               'type' => 'S3_InventorySchedule'
                             },
               'Destination' => {
                                  'class' => 'Paws::S3::InventoryDestination',
                                  'type' => 'S3_InventoryDestination'
                                },
               'IsEnabled' => {
                                'type' => 'Bool'
                              }
             },
  'NameInRequest' => {
                       'OptionalFields' => 'Field'
                     },
  'IsRequired' => {
                    'Id' => 1,
                    'IncludedObjectVersions' => 1,
                    'Schedule' => 1,
                    'Destination' => 1,
                    'IsEnabled' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::InventoryConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::InventoryConfiguration object:

  $service_obj->Method(Att1 => { Destination => $value, ..., Schedule => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::InventoryConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->Destination

=head1 DESCRIPTION

Specifies the inventory configuration for an Amazon S3 bucket. For more
information, see GET Bucket inventory
(https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketGETInventoryConfig.html)
in the I<Amazon Simple Storage Service API Reference>.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Destination => S3_InventoryDestination

  Contains information about where to publish the inventory results.


=head2 Filter => S3_InventoryFilter

  Specifies an inventory filter. The inventory only includes objects that
meet the filter's criteria.


=head2 B<REQUIRED> Id => Str

  The ID used to identify the inventory configuration.


=head2 B<REQUIRED> IncludedObjectVersions => Str

  Object versions to include in the inventory list. If set to C<All>, the
list includes all the object versions, which adds the version-related
fields C<VersionId>, C<IsLatest>, and C<DeleteMarker> to the list. If
set to C<Current>, the list does not contain these version-related
fields.


=head2 B<REQUIRED> IsEnabled => Bool

  Specifies whether the inventory is enabled or disabled. If set to
C<True>, an inventory list is generated. If set to C<False>, no
inventory list is generated.


=head2 OptionalFields => ArrayRef[Str|Undef]

  Contains the optional fields that are included in the inventory
results.


=head2 B<REQUIRED> Schedule => S3_InventorySchedule

  Specifies the schedule for generating inventory results.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

