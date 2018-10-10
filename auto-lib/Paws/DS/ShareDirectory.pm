
package Paws::DS::ShareDirectory;
  use Moose;
  has DirectoryId => (is => 'ro', isa => 'Str', required => 1);
  has ShareMethod => (is => 'ro', isa => 'Str', required => 1);
  has ShareNotes => (is => 'ro', isa => 'Str');
  has ShareTarget => (is => 'ro', isa => 'Paws::DS::ShareTarget', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ShareDirectory');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DS::ShareDirectoryResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DS::ShareDirectory - Arguments for method ShareDirectory on L<Paws::DS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ShareDirectory on the
L<AWS Directory Service|Paws::DS> service. Use the attributes of this class
as arguments to method ShareDirectory.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ShareDirectory.

=head1 SYNOPSIS

    my $ds = Paws->service('DS');
    my $ShareDirectoryResult = $ds->ShareDirectory(
      DirectoryId => 'MyDirectoryId',
      ShareMethod => 'ORGANIZATIONS',
      ShareTarget => {
        Id   => 'MyTargetId',    # min: 1, max: 64
        Type => 'ACCOUNT',       # values: ACCOUNT

      },
      ShareNotes => 'MyNotes',    # OPTIONAL
    );

    # Results:
    my $SharedDirectoryId = $ShareDirectoryResult->SharedDirectoryId;

    # Returns a L<Paws::DS::ShareDirectoryResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ds/ShareDirectory>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DirectoryId => Str

Identifier of the AWS Managed Microsoft AD directory that you want to
share with other AWS accounts.



=head2 B<REQUIRED> ShareMethod => Str

The method used when sharing a directory to determine whether the
directory should be shared within your AWS organization
(C<ORGANIZATIONS>) or with any AWS account by sending a directory
sharing request (C<HANDSHAKE>).

Valid values are: C<"ORGANIZATIONS">, C<"HANDSHAKE">

=head2 ShareNotes => Str

A directory share request that is sent by the directory owner to the
directory consumer. The request includes a typed message to help the
directory consumer administrator determine whether to approve or reject
the share invitation.



=head2 B<REQUIRED> ShareTarget => L<Paws::DS::ShareTarget>

Identifier for the directory consumer account with whom the directory
is to be shared.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ShareDirectory in L<Paws::DS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

