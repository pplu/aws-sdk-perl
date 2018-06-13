
package Paws::SSM::DescribeDocumentPermission;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has PermissionType => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDocumentPermission');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::DescribeDocumentPermissionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::DescribeDocumentPermission - Arguments for method DescribeDocumentPermission on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDocumentPermission on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method DescribeDocumentPermission.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDocumentPermission.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $DescribeDocumentPermissionResponse = $ssm->DescribeDocumentPermission(
      Name           => 'MyDocumentName',
      PermissionType => 'Share',

    );

    # Results:
    my $AccountIds = $DescribeDocumentPermissionResponse->AccountIds;

    # Returns a L<Paws::SSM::DescribeDocumentPermissionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/DescribeDocumentPermission>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the document for which you are the owner.



=head2 B<REQUIRED> PermissionType => Str

The permission type for the document. The permission type can be
I<Share>.

Valid values are: C<"Share">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDocumentPermission in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

