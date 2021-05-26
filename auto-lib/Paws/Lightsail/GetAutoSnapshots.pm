
package Paws::Lightsail::GetAutoSnapshots;
  use Moose;
  has ResourceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAutoSnapshots');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::GetAutoSnapshotsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetAutoSnapshots - Arguments for method GetAutoSnapshots on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAutoSnapshots on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method GetAutoSnapshots.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAutoSnapshots.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $GetAutoSnapshotsResult = $lightsail->GetAutoSnapshots(
      ResourceName => 'MyResourceName',

    );

    # Results:
    my $AutoSnapshots = $GetAutoSnapshotsResult->AutoSnapshots;
    my $ResourceName  = $GetAutoSnapshotsResult->ResourceName;
    my $ResourceType  = $GetAutoSnapshotsResult->ResourceType;

    # Returns a L<Paws::Lightsail::GetAutoSnapshotsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/GetAutoSnapshots>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceName => Str

The name of the source instance or disk from which to get automatic
snapshot information.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAutoSnapshots in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

