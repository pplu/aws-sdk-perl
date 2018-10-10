
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
For the AWS API documentation, see L<https://aws.amazon.com/documentation/opsworks/>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ExportAttributeName => Str

The name of the export attribute. Currently supported export attribute
is "Userdata" which exports a userdata script filled out with
parameters provided in the C<InputAttributes> list.



=head2 InputAttributes => ArrayRef[L<Paws::OpsWorksCM::EngineAttribute>]

The list of engine attributes. The list type is C<EngineAttribute>.
C<EngineAttribute> is a pair of attribute name and value. For
C<ExportAttributeName> "Userdata", currently supported input attribute
names are: - "RunList": For Chef, an ordered list of roles and/or
recipes that are run in the exact order. For Puppet, this parameter is
ignored. - "OrganizationName": For Chef, an organization name. AWS
OpsWorks for Chef Server always creates the organization "default". For
Puppet, this parameter is ignored. - "NodeEnvironment": For Chef, a
node environment (eg. development, staging, onebox). For Puppet, this
parameter is ignored. - "NodeClientVersion": For Chef, version of Chef
Engine (3 numbers separated by dots, eg. "13.8.5"). If empty, it uses
the latest one. For Puppet, this parameter is ignored.



=head2 B<REQUIRED> ServerName => Str

The name of the Server to which the attribute is being exported from




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ExportServerEngineAttribute in L<Paws::OpsWorksCM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

