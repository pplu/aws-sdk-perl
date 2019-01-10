
package Paws::OpsWorksCM::ExportServerEngineAttribute;
  use Moose;
  has ExportAttributeName => (is => 'ro', isa => 'Str', required => 1);
  has InputAttributes => (is => 'ro', isa => 'ArrayRef[Paws::OpsWorksCM::EngineAttribute]');
  has ServerName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ExportServerEngineAttribute');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpsWorksCM::ExportServerEngineAttributeResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorksCM::ExportServerEngineAttribute - Arguments for method ExportServerEngineAttribute on L<Paws::OpsWorksCM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ExportServerEngineAttribute on the
L<AWS OpsWorks for Chef Automate|Paws::OpsWorksCM> service. Use the attributes of this class
as arguments to method ExportServerEngineAttribute.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ExportServerEngineAttribute.

=head1 SYNOPSIS

    my $opsworks-cm = Paws->service('OpsWorksCM');
    my $ExportServerEngineAttributeResponse =
      $opsworks -cm->ExportServerEngineAttribute(
      ExportAttributeName => 'MyString',
      ServerName          => 'MyServerName',
      InputAttributes     => [
        {
          Name  => 'MyEngineAttributeName',     # OPTIONAL
          Value => 'MyEngineAttributeValue',    # OPTIONAL
        },
        ...
      ],                                        # OPTIONAL
      );

    # Results:
    my $EngineAttribute = $ExportServerEngineAttributeResponse->EngineAttribute;
    my $ServerName      = $ExportServerEngineAttributeResponse->ServerName;

    # Returns a L<Paws::OpsWorksCM::ExportServerEngineAttributeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/opsworks-cm/latest/APIReference/API_ExportServerEngineAttribute.html>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ExportAttributeName => Str

The name of the export attribute. Currently, the supported export
attribute is C<Userdata>. This exports a user data script that includes
parameters and values provided in the C<InputAttributes> list.



=head2 InputAttributes => ArrayRef[L<Paws::OpsWorksCM::EngineAttribute>]

The list of engine attributes. The list type is C<EngineAttribute>. An
C<EngineAttribute> list item is a pair that includes an attribute name
and its value. For the C<Userdata> ExportAttributeName, the following
are supported engine attribute names.

=over

=item *

B<RunList> In Chef, a list of roles or recipes that are run in the
specified order. In Puppet, this parameter is ignored.

=item *

B<OrganizationName> In Chef, an organization name. AWS OpsWorks for
Chef Automate always creates the organization C<default>. In Puppet,
this parameter is ignored.

=item *

B<NodeEnvironment> In Chef, a node environment (for example,
development, staging, or one-box). In Puppet, this parameter is
ignored.

=item *

B<NodeClientVersion> In Chef, the version of the Chef engine (three
numbers separated by dots, such as 13.8.5). If this attribute is empty,
OpsWorks for Chef Automate uses the most current version. In Puppet,
this parameter is ignored.

=back




=head2 B<REQUIRED> ServerName => Str

The name of the server from which you are exporting the attribute.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ExportServerEngineAttribute in L<Paws::OpsWorksCM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

