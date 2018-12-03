
package Paws::Lightsail::CopySnapshot;
  use Moose;
  has SourceRegion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceRegion' , required => 1);
  has SourceSnapshotName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceSnapshotName' , required => 1);
  has TargetSnapshotName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'targetSnapshotName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CopySnapshot');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::CopySnapshotResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::CopySnapshot - Arguments for method CopySnapshot on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CopySnapshot on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method CopySnapshot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CopySnapshot.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $CopySnapshotResult = $lightsail->CopySnapshot(
      SourceRegion       => 'us-east-1',
      SourceSnapshotName => 'MyResourceName',
      TargetSnapshotName => 'MyResourceName',

    );

    # Results:
    my $Operations = $CopySnapshotResult->Operations;

    # Returns a L<Paws::Lightsail::CopySnapshotResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/CopySnapshot>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SourceRegion => Str

The AWS Region where the source snapshot is located.

Valid values are: C<"us-east-1">, C<"us-east-2">, C<"us-west-1">, C<"us-west-2">, C<"eu-west-1">, C<"eu-west-2">, C<"eu-west-3">, C<"eu-central-1">, C<"ca-central-1">, C<"ap-south-1">, C<"ap-southeast-1">, C<"ap-southeast-2">, C<"ap-northeast-1">, C<"ap-northeast-2">

=head2 B<REQUIRED> SourceSnapshotName => Str

The name of the source instance or disk snapshot to be copied.



=head2 B<REQUIRED> TargetSnapshotName => Str

The name of the new instance or disk snapshot to be created as a copy.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CopySnapshot in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

