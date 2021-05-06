
package Paws::Lightsail::GetInstanceSnapshot;
  use Moose;
  has InstanceSnapshotName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'instanceSnapshotName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetInstanceSnapshot');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::GetInstanceSnapshotResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetInstanceSnapshot - Arguments for method GetInstanceSnapshot on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetInstanceSnapshot on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method GetInstanceSnapshot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetInstanceSnapshot.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $GetInstanceSnapshotResult = $lightsail->GetInstanceSnapshot(
      InstanceSnapshotName => 'MyResourceName',

    );

    # Results:
    my $InstanceSnapshot = $GetInstanceSnapshotResult->InstanceSnapshot;

    # Returns a L<Paws::Lightsail::GetInstanceSnapshotResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/GetInstanceSnapshot>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceSnapshotName => Str

The name of the snapshot for which you are requesting information.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetInstanceSnapshot in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

