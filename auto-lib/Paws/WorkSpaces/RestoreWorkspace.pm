# Generated from json/callargs_class.tt

package Paws::WorkSpaces::RestoreWorkspace;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WorkSpaces::Types qw//;
  has WorkspaceId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'RestoreWorkspace');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::WorkSpaces::RestoreWorkspaceResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'WorkspaceId' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'WorkspaceId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::RestoreWorkspace - Arguments for method RestoreWorkspace on L<Paws::WorkSpaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RestoreWorkspace on the
L<Amazon WorkSpaces|Paws::WorkSpaces> service. Use the attributes of this class
as arguments to method RestoreWorkspace.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RestoreWorkspace.

=head1 SYNOPSIS

    my $workspaces = Paws->service('WorkSpaces');
    my $RestoreWorkspaceResult = $workspaces->RestoreWorkspace(
      WorkspaceId => 'MyWorkspaceId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workspaces/RestoreWorkspace>

=head1 ATTRIBUTES


=head2 B<REQUIRED> WorkspaceId => Str

The identifier of the WorkSpace.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RestoreWorkspace in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

