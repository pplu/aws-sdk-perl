
package Paws::FSX::AssociateFileSystemAliases;
  use Moose;
  has Aliases => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has FileSystemId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateFileSystemAliases');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FSX::AssociateFileSystemAliasesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FSX::AssociateFileSystemAliases - Arguments for method AssociateFileSystemAliases on L<Paws::FSX>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateFileSystemAliases on the
L<Amazon FSx|Paws::FSX> service. Use the attributes of this class
as arguments to method AssociateFileSystemAliases.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateFileSystemAliases.

=head1 SYNOPSIS

    my $fsx = Paws->service('FSX');
    my $AssociateFileSystemAliasesResponse = $fsx->AssociateFileSystemAliases(
      Aliases => [
        'MyAlternateDNSName', ...    # min: 4, max: 253
      ],
      FileSystemId       => 'MyFileSystemId',
      ClientRequestToken => 'MyClientRequestToken',    # OPTIONAL
    );

    # Results:
    my $Aliases = $AssociateFileSystemAliasesResponse->Aliases;

    # Returns a L<Paws::FSX::AssociateFileSystemAliasesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/fsx/AssociateFileSystemAliases>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Aliases => ArrayRef[Str|Undef]

An array of one or more DNS alias names to associate with the file
system. The alias name has to comply with the following formatting
requirements:

=over

=item *

Formatted as a fully-qualified domain name (FQDN), I<
C<hostname.domain> >, for example, C<accounting.corp.example.com>.

=item *

Can contain alphanumeric characters and the hyphen (-).

=item *

Cannot start or end with a hyphen.

=item *

Can start with a numeric.

=back

For DNS alias names, Amazon FSx stores alphabetic characters as
lowercase letters (a-z), regardless of how you specify them: as
uppercase letters, lowercase letters, or the corresponding letters in
escape codes.



=head2 ClientRequestToken => Str





=head2 B<REQUIRED> FileSystemId => Str

Specifies the file system with which you want to associate one or more
DNS aliases.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateFileSystemAliases in L<Paws::FSX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

