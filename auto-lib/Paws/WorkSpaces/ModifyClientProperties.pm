
package Paws::WorkSpaces::ModifyClientProperties;
  use Moose;
  has ClientProperties => (is => 'ro', isa => 'Paws::WorkSpaces::ClientProperties', required => 1);
  has ResourceId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyClientProperties');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkSpaces::ModifyClientPropertiesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::ModifyClientProperties - Arguments for method ModifyClientProperties on L<Paws::WorkSpaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyClientProperties on the
L<Amazon WorkSpaces|Paws::WorkSpaces> service. Use the attributes of this class
as arguments to method ModifyClientProperties.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyClientProperties.

=head1 SYNOPSIS

    my $workspaces = Paws->service('WorkSpaces');
    my $ModifyClientPropertiesResult = $workspaces->ModifyClientProperties(
      ClientProperties => {
        ReconnectEnabled => 'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
      },
      ResourceId => 'MyNonEmptyString',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workspaces/ModifyClientProperties>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientProperties => L<Paws::WorkSpaces::ClientProperties>

Information about the Amazon WorkSpaces client.



=head2 B<REQUIRED> ResourceId => Str

The resource identifiers, in the form of directory IDs.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyClientProperties in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

