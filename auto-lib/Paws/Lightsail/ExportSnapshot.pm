
package Paws::Lightsail::ExportSnapshot;
  use Moose;
  has SourceSnapshotName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceSnapshotName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ExportSnapshot');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::ExportSnapshotResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::ExportSnapshot - Arguments for method ExportSnapshot on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ExportSnapshot on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method ExportSnapshot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ExportSnapshot.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $ExportSnapshotResult = $lightsail->ExportSnapshot(
      SourceSnapshotName => 'MyResourceName',

    );

    # Results:
    my $Operations = $ExportSnapshotResult->Operations;

    # Returns a L<Paws::Lightsail::ExportSnapshotResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/ExportSnapshot>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SourceSnapshotName => Str

The name of the instance or disk snapshot to be exported to Amazon EC2.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ExportSnapshot in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

