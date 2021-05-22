
package Paws::DS::EnableClientAuthentication;
  use Moose;
  has DirectoryId => (is => 'ro', isa => 'Str', required => 1);
  has Type => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'EnableClientAuthentication');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DS::EnableClientAuthenticationResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DS::EnableClientAuthentication - Arguments for method EnableClientAuthentication on L<Paws::DS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method EnableClientAuthentication on the
L<AWS Directory Service|Paws::DS> service. Use the attributes of this class
as arguments to method EnableClientAuthentication.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to EnableClientAuthentication.

=head1 SYNOPSIS

    my $ds = Paws->service('DS');
    my $EnableClientAuthenticationResult = $ds->EnableClientAuthentication(
      DirectoryId => 'MyDirectoryId',
      Type        => 'SmartCard',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ds/EnableClientAuthentication>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DirectoryId => Str

The identifier of the specified directory.



=head2 B<REQUIRED> Type => Str

The type of client authentication to enable. Currently only the value
C<SmartCard> is supported. Smart card authentication in AD Connector
requires that you enable Kerberos Constrained Delegation for the
Service User to the LDAP service in the on-premises AD.

Valid values are: C<"SmartCard">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method EnableClientAuthentication in L<Paws::DS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

