
package Paws::RedShift::DeleteSnapshotCopyGrant;
  use Moose;
  has SnapshotCopyGrantName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteSnapshotCopyGrant');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::DeleteSnapshotCopyGrant - Arguments for method DeleteSnapshotCopyGrant on L<Paws::RedShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteSnapshotCopyGrant on the
L<Amazon Redshift|Paws::RedShift> service. Use the attributes of this class
as arguments to method DeleteSnapshotCopyGrant.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteSnapshotCopyGrant.

=head1 SYNOPSIS

    my $redshift = Paws->service('RedShift');
    $redshift->DeleteSnapshotCopyGrant(
      SnapshotCopyGrantName => 'MyString',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift/DeleteSnapshotCopyGrant>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SnapshotCopyGrantName => Str

The name of the snapshot copy grant to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteSnapshotCopyGrant in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

