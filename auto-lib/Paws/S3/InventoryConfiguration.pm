package Paws::S3::InventoryConfiguration;
  use Moose;
  has Destination => (is => 'ro', isa => 'Paws::S3::InventoryDestination', required => 1);
  has Filter => (is => 'ro', isa => 'Paws::S3::InventoryFilter');
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has IncludedObjectVersions => (is => 'ro', isa => 'Str', required => 1);
  has IsEnabled => (is => 'ro', isa => 'Bool', required => 1);
  has OptionalFields => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'Field', traits => ['NameInRequest']);
  has Schedule => (is => 'ro', isa => 'Paws::S3::InventorySchedule', required => 1);
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


=head2 B<REQUIRED> Destination => L<Paws::S3::InventoryDestination>

  Contains information about where to publish the inventory results.


=head2 Filter => L<Paws::S3::InventoryFilter>

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


=head2 B<REQUIRED> Schedule => L<Paws::S3::InventorySchedule>

  Specifies the schedule for generating inventory results.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

