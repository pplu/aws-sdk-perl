
package Paws::Lightsail::CreateInstancesFromSnapshot;
  use Moose;
  has AttachedDiskMapping => (is => 'ro', isa => 'Paws::Lightsail::AttachedDiskMap', traits => ['NameInRequest'], request_name => 'attachedDiskMapping' );
  has AvailabilityZone => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'availabilityZone' , required => 1);
  has BundleId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'bundleId' , required => 1);
  has InstanceNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'instanceNames' , required => 1);
  has InstanceSnapshotName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'instanceSnapshotName' , required => 1);
  has KeyPairName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'keyPairName' );
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::Tag]', traits => ['NameInRequest'], request_name => 'tags' );
  has UserData => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'userData' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateInstancesFromSnapshot');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::CreateInstancesFromSnapshotResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::CreateInstancesFromSnapshot - Arguments for method CreateInstancesFromSnapshot on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateInstancesFromSnapshot on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method CreateInstancesFromSnapshot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateInstancesFromSnapshot.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $CreateInstancesFromSnapshotResult =
      $lightsail->CreateInstancesFromSnapshot(
      AvailabilityZone     => 'Mystring',
      BundleId             => 'MyNonEmptyString',
      InstanceNames        => [ 'Mystring', ... ],
      InstanceSnapshotName => 'MyResourceName',
      AttachedDiskMapping  => {
        'MyResourceName' => [
          {
            NewDiskName      => 'MyResourceName',
            OriginalDiskPath => 'MyNonEmptyString',
          },
          ...
        ],
      },    # OPTIONAL
      KeyPairName => 'MyResourceName',    # OPTIONAL
      Tags        => [
        {
          Key   => 'MyTagKey',            # OPTIONAL
          Value => 'MyTagValue',          # OPTIONAL
        },
        ...
      ],                                  # OPTIONAL
      UserData => 'Mystring',             # OPTIONAL
      );

    # Results:
    my $Operations = $CreateInstancesFromSnapshotResult->Operations;

    # Returns a L<Paws::Lightsail::CreateInstancesFromSnapshotResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/CreateInstancesFromSnapshot>

=head1 ATTRIBUTES


=head2 AttachedDiskMapping => L<Paws::Lightsail::AttachedDiskMap>

An object containing information about one or more disk mappings.



=head2 B<REQUIRED> AvailabilityZone => Str

The Availability Zone where you want to create your instances. Use the
following formatting: C<us-east-2a> (case sensitive). You can get a
list of Availability Zones by using the get regions
(http://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_GetRegions.html)
operation. Be sure to add the C<include Availability Zones> parameter
to your request.



=head2 B<REQUIRED> BundleId => Str

The bundle of specification information for your virtual private server
(or I<instance>), including the pricing plan (e.g., C<micro_1_0>).



=head2 B<REQUIRED> InstanceNames => ArrayRef[Str|Undef]

The names for your new instances.



=head2 B<REQUIRED> InstanceSnapshotName => Str

The name of the instance snapshot on which you are basing your new
instances. Use the get instance snapshots operation to return
information about your existing snapshots.



=head2 KeyPairName => Str

The name for your key pair.



=head2 Tags => ArrayRef[L<Paws::Lightsail::Tag>]

The tag keys and optional values to add to the resource during create.

To tag a resource after it has been created, see the C<tag resource>
operation.



=head2 UserData => Str

You can create a launch script that configures a server with additional
user data. For example, C<apt-get -y update>.

Depending on the machine image you choose, the command to get software
on your instance varies. Amazon Linux and CentOS use C<yum>, Debian and
Ubuntu use C<apt-get>, and FreeBSD uses C<pkg>. For a complete list,
see the Dev Guide
(https://lightsail.aws.amazon.com/ls/docs/getting-started/article/compare-options-choose-lightsail-instance-image).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateInstancesFromSnapshot in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

