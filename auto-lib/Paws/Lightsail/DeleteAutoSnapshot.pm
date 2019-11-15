
package Paws::Lightsail::DeleteAutoSnapshot;
  use Moose;
  has Date => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'date' , required => 1);
  has ResourceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteAutoSnapshot');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::DeleteAutoSnapshotResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::DeleteAutoSnapshot - Arguments for method DeleteAutoSnapshot on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteAutoSnapshot on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method DeleteAutoSnapshot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteAutoSnapshot.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $DeleteAutoSnapshotResult = $lightsail->DeleteAutoSnapshot(
      Date         => 'MyAutoSnapshotDate',
      ResourceName => 'MyResourceName',

    );

    # Results:
    my $Operations = $DeleteAutoSnapshotResult->Operations;

    # Returns a L<Paws::Lightsail::DeleteAutoSnapshotResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/DeleteAutoSnapshot>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Date => Str

The date of the automatic snapshot to delete in C<YYYY-MM-DD> format.

Use the C<get auto snapshots> operation to get the available automatic
snapshots for a resource.



=head2 B<REQUIRED> ResourceName => Str

The name of the source resource from which to delete the automatic
snapshot.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteAutoSnapshot in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

