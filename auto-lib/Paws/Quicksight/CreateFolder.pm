
package Paws::Quicksight::CreateFolder;
  use Moose;
  has AwsAccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AwsAccountId', required => 1);
  has FolderId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'FolderId', required => 1);
  has FolderType => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has ParentFolderArn => (is => 'ro', isa => 'Str');
  has Permissions => (is => 'ro', isa => 'ArrayRef[Paws::Quicksight::ResourcePermission]');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Quicksight::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateFolder');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/accounts/{AwsAccountId}/folders/{FolderId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Quicksight::CreateFolderResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::CreateFolder - Arguments for method CreateFolder on L<Paws::Quicksight>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateFolder on the
L<Amazon QuickSight|Paws::Quicksight> service. Use the attributes of this class
as arguments to method CreateFolder.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateFolder.

=head1 SYNOPSIS

    my $quicksight = Paws->service('Quicksight');
    my $CreateFolderResponse = $quicksight->CreateFolder(
      AwsAccountId    => 'MyAwsAccountId',
      FolderId        => 'MyRestrictiveResourceId',
      FolderType      => 'SHARED',                    # OPTIONAL
      Name            => 'MyFolderName',              # OPTIONAL
      ParentFolderArn => 'MyArn',                     # OPTIONAL
      Permissions     => [
        {
          Actions   => [ 'MyString', ... ],    # min: 1, max: 16
          Principal => 'MyPrincipal',          # min: 1, max: 256

        },
        ...
      ],    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # min: 1, max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $Arn       = $CreateFolderResponse->Arn;
    my $FolderId  = $CreateFolderResponse->FolderId;
    my $RequestId = $CreateFolderResponse->RequestId;
    my $Status    = $CreateFolderResponse->Status;

    # Returns a L<Paws::Quicksight::CreateFolderResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/quicksight/CreateFolder>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AwsAccountId => Str

The AWS Account ID.



=head2 B<REQUIRED> FolderId => Str

The folder ID.



=head2 FolderType => Str

The type of folder. By default, C<folderType> is C<SHARED>.

Valid values are: C<"SHARED">

=head2 Name => Str

The name of the folder.



=head2 ParentFolderArn => Str

The Amazon Resource Name (ARN) for the parent folder.

C<ParentFolderArn> can be null. An empty C<parentFolderArn> creates a
root-level folder.



=head2 Permissions => ArrayRef[L<Paws::Quicksight::ResourcePermission>]

A structure that describes the principals and the resource-level
permissions of a folder.

To specify no permissions, omit C<Permissions>.



=head2 Tags => ArrayRef[L<Paws::Quicksight::Tag>]

Tags for the folder.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateFolder in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

