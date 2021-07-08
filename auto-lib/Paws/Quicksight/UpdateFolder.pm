
package Paws::Quicksight::UpdateFolder;
  use Moose;
  has AwsAccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AwsAccountId', required => 1);
  has FolderId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'FolderId', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateFolder');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/accounts/{AwsAccountId}/folders/{FolderId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Quicksight::UpdateFolderResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::UpdateFolder - Arguments for method UpdateFolder on L<Paws::Quicksight>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateFolder on the
L<Amazon QuickSight|Paws::Quicksight> service. Use the attributes of this class
as arguments to method UpdateFolder.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateFolder.

=head1 SYNOPSIS

    my $quicksight = Paws->service('Quicksight');
    my $UpdateFolderResponse = $quicksight->UpdateFolder(
      AwsAccountId => 'MyAwsAccountId',
      FolderId     => 'MyRestrictiveResourceId',
      Name         => 'MyFolderName',

    );

    # Results:
    my $Arn       = $UpdateFolderResponse->Arn;
    my $FolderId  = $UpdateFolderResponse->FolderId;
    my $RequestId = $UpdateFolderResponse->RequestId;
    my $Status    = $UpdateFolderResponse->Status;

    # Returns a L<Paws::Quicksight::UpdateFolderResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/quicksight/UpdateFolder>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AwsAccountId => Str

The AWS account ID.



=head2 B<REQUIRED> FolderId => Str

The folder ID.



=head2 B<REQUIRED> Name => Str

The name of the folder.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateFolder in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

