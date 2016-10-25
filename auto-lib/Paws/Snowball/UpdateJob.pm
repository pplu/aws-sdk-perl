
package Paws::Snowball::UpdateJob;
  use Moose;
  has AddressId => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has JobId => (is => 'ro', isa => 'Str', required => 1);
  has Notification => (is => 'ro', isa => 'Paws::Snowball::Notification');
  has Resources => (is => 'ro', isa => 'Paws::Snowball::JobResource');
  has RoleARN => (is => 'ro', isa => 'Str');
  has ShippingOption => (is => 'ro', isa => 'Str');
  has SnowballCapacityPreference => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Snowball::UpdateJobResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Snowball::UpdateJob - Arguments for method UpdateJob on Paws::Snowball

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateJob on the 
Amazon Import/Export Snowball service. Use the attributes of this class
as arguments to method UpdateJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateJob.

As an example:

  $service_obj->UpdateJob(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 AddressId => Str

The ID of the updated Address object.



=head2 Description => Str

The updated description of this job's JobMetadata object.



=head2 B<REQUIRED> JobId => Str

The job ID of the job that you want to update, for example
C<JID123e4567-e89b-12d3-a456-426655440000>.



=head2 Notification => L<Paws::Snowball::Notification>

The new or updated Notification object.



=head2 Resources => L<Paws::Snowball::JobResource>

The updated S3Resource object (for a single Amazon S3 bucket or key
range), or the updated JobResource object (for multiple buckets or key
ranges).



=head2 RoleARN => Str

The new role Amazon Resource Name (ARN) that you want to associate with
this job. To create a role ARN, use the CreateRole AWS Identity and
Access Management (IAM) API action.



=head2 ShippingOption => Str

The updated shipping option value of this job's ShippingDetails object.

Valid values are: C<"SECOND_DAY">, C<"NEXT_DAY">, C<"EXPRESS">, C<"STANDARD">

=head2 SnowballCapacityPreference => Str

The updated C<SnowballCapacityPreference> of this job's JobMetadata
object. Note that the 50 TB Snowballs are only available in the US
regions.

Valid values are: C<"T50">, C<"T80">, C<"NoPreference">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateJob in L<Paws::Snowball>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

